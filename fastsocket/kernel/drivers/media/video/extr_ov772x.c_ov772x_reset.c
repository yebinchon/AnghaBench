
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int COM7 ;
 int SCCB_RESET ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static int ov772x_reset(struct i2c_client *client)
{
 int ret = i2c_smbus_write_byte_data(client, COM7, SCCB_RESET);
 msleep(1);
 return ret;
}
