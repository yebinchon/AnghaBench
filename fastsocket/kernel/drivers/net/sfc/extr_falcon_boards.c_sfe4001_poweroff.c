
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {struct i2c_client* hwmon_client; struct i2c_client* ioexp_client; } ;


 int MAX664X_REG_RSL ;
 int P0_CONFIG ;
 int P0_OUT ;
 int P1_CONFIG ;
 TYPE_1__* falcon_board (struct efx_nic*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void sfe4001_poweroff(struct efx_nic *efx)
{
 struct i2c_client *ioexp_client = falcon_board(efx)->ioexp_client;
 struct i2c_client *hwmon_client = falcon_board(efx)->hwmon_client;


 i2c_smbus_write_byte_data(ioexp_client, P0_OUT, 0xff);
 i2c_smbus_write_byte_data(ioexp_client, P1_CONFIG, 0xff);
 i2c_smbus_write_byte_data(ioexp_client, P0_CONFIG, 0xff);


 i2c_smbus_read_byte_data(hwmon_client, MAX664X_REG_RSL);
}
