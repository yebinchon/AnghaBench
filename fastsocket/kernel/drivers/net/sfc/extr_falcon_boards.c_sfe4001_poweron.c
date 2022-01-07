
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct efx_nic {int phy_mode; int net_dev; } ;
struct TYPE_2__ {struct i2c_client* hwmon_client; struct i2c_client* ioexp_client; } ;


 int ETIMEDOUT ;
 int HZ ;
 int MAX664X_REG_RSL ;
 int P0_CONFIG ;
 int P0_EN_1V0X_LBN ;
 int P0_EN_1V2_LBN ;
 int P0_EN_2V5_LBN ;
 int P0_EN_3V3X_LBN ;
 int P0_EN_5V_LBN ;
 int P0_OUT ;
 int P0_X_TRST_LBN ;
 int P1_AFE_PWD_LBN ;
 int P1_CONFIG ;
 int P1_IN ;
 int P1_SPARE_LBN ;
 int PHY_MODE_SPECIAL ;
 TYPE_1__* falcon_board (struct efx_nic*) ;
 int hw ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int msleep (int) ;
 int netif_info (struct efx_nic*,int ,int ,char*,...) ;
 int schedule_timeout_uninterruptible (int ) ;
 int sfe4001_poweroff (struct efx_nic*) ;

__attribute__((used)) static int sfe4001_poweron(struct efx_nic *efx)
{
 struct i2c_client *ioexp_client = falcon_board(efx)->ioexp_client;
 struct i2c_client *hwmon_client = falcon_board(efx)->hwmon_client;
 unsigned int i, j;
 int rc;
 u8 out;


 rc = i2c_smbus_read_byte_data(hwmon_client, MAX664X_REG_RSL);
 if (rc < 0)
  return rc;


 rc = i2c_smbus_write_byte_data(ioexp_client, P0_CONFIG, 0x00);
 if (rc)
  return rc;
 rc = i2c_smbus_write_byte_data(ioexp_client, P1_CONFIG,
           0xff & ~(1 << P1_SPARE_LBN));
 if (rc)
  goto fail_on;




 rc = i2c_smbus_read_byte_data(ioexp_client, P0_OUT);
 if (rc < 0)
  goto fail_on;
 out = 0xff & ~((0 << P0_EN_1V2_LBN) | (0 << P0_EN_2V5_LBN) |
         (0 << P0_EN_3V3X_LBN) | (0 << P0_EN_5V_LBN) |
         (0 << P0_EN_1V0X_LBN));
 if (rc != out) {
  netif_info(efx, hw, efx->net_dev, "power-cycling PHY\n");
  rc = i2c_smbus_write_byte_data(ioexp_client, P0_OUT, out);
  if (rc)
   goto fail_on;
  schedule_timeout_uninterruptible(HZ);
 }

 for (i = 0; i < 20; ++i) {

  out = 0xff & ~((1 << P0_EN_1V2_LBN) | (1 << P0_EN_2V5_LBN) |
          (1 << P0_EN_3V3X_LBN) | (1 << P0_EN_5V_LBN) |
          (1 << P0_X_TRST_LBN));
  if (efx->phy_mode & PHY_MODE_SPECIAL)
   out |= 1 << P0_EN_3V3X_LBN;

  rc = i2c_smbus_write_byte_data(ioexp_client, P0_OUT, out);
  if (rc)
   goto fail_on;
  msleep(10);


  out &= ~(1 << P0_EN_1V0X_LBN);
  rc = i2c_smbus_write_byte_data(ioexp_client, P0_OUT, out);
  if (rc)
   goto fail_on;

  netif_info(efx, hw, efx->net_dev,
      "waiting for DSP boot (attempt %d)...\n", i);




  if (efx->phy_mode & PHY_MODE_SPECIAL) {
   schedule_timeout_uninterruptible(HZ);
   return 0;
  }

  for (j = 0; j < 10; ++j) {
   msleep(100);


   rc = i2c_smbus_read_byte_data(ioexp_client, P1_IN);
   if (rc < 0)
    goto fail_on;
   if (rc & (1 << P1_AFE_PWD_LBN))
    return 0;
  }
 }

 netif_info(efx, hw, efx->net_dev, "timed out waiting for DSP boot\n");
 rc = -ETIMEDOUT;
fail_on:
 sfe4001_poweroff(efx);
 return rc;
}
