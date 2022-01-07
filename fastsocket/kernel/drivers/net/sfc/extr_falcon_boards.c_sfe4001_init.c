
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct falcon_board {void* hwmon_client; void* ioexp_client; int i2c_adap; } ;
struct efx_nic {int phy_mode; int net_dev; TYPE_1__* pci_dev; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int MAX664X_REG_WLHO ;
 int PCA9539 ;
 int PHY_MODE_SPECIAL ;
 int dev_attr_phy_flash_cfg ;
 int device_create_file (int *,int *) ;
 struct falcon_board* falcon_board (struct efx_nic*) ;
 int falcon_stop_nic_stats (struct efx_nic*) ;
 int hw ;
 void* i2c_new_device (int *,TYPE_2__*) ;
 void* i2c_new_dummy (int *,int ) ;
 int i2c_smbus_write_byte_data (void*,int ,int) ;
 int i2c_unregister_device (void*) ;
 int netif_info (struct efx_nic*,int ,int ,char*) ;
 TYPE_2__ sfe4001_hwmon_info ;
 int sfe4001_poweroff (struct efx_nic*) ;
 int sfe4001_poweron (struct efx_nic*) ;

__attribute__((used)) static int sfe4001_init(struct efx_nic *efx)
{
 struct falcon_board *board = falcon_board(efx);
 int rc;





 board->hwmon_client =
  i2c_new_dummy(&board->i2c_adap, sfe4001_hwmon_info.addr);

 if (!board->hwmon_client)
  return -EIO;


 rc = i2c_smbus_write_byte_data(board->hwmon_client,
           MAX664X_REG_WLHO, 90);
 if (rc)
  goto fail_hwmon;

 board->ioexp_client = i2c_new_dummy(&board->i2c_adap, PCA9539);
 if (!board->ioexp_client) {
  rc = -EIO;
  goto fail_hwmon;
 }

 if (efx->phy_mode & PHY_MODE_SPECIAL) {


  falcon_stop_nic_stats(efx);
 }
 rc = sfe4001_poweron(efx);
 if (rc)
  goto fail_ioexp;

 rc = device_create_file(&efx->pci_dev->dev, &dev_attr_phy_flash_cfg);
 if (rc)
  goto fail_on;

 netif_info(efx, hw, efx->net_dev, "PHY is powered on\n");
 return 0;

fail_on:
 sfe4001_poweroff(efx);
fail_ioexp:
 i2c_unregister_device(board->ioexp_client);
fail_hwmon:
 i2c_unregister_device(board->hwmon_client);
 return rc;
}
