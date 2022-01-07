
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int msp_write_dem (struct i2c_client*,int,int) ;

void msp3400c_set_carrier(struct i2c_client *client, int cdo1, int cdo2)
{
 msp_write_dem(client, 0x0093, cdo1 & 0xfff);
 msp_write_dem(client, 0x009b, cdo1 >> 12);
 msp_write_dem(client, 0x00a3, cdo2 & 0xfff);
 msp_write_dem(client, 0x00ab, cdo2 >> 12);
 msp_write_dem(client, 0x0056, 0);
}
