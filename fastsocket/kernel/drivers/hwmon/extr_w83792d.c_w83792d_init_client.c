
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int W83792D_REG_CONFIG ;
 int W83792D_REG_TEMP2_CONFIG ;
 int W83792D_REG_TEMP3_CONFIG ;
 int W83792D_REG_VID_IN_B ;
 scalar_t__ init ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void
w83792d_init_client(struct i2c_client *client)
{
 u8 temp2_cfg, temp3_cfg, vid_in_b;

 if (init) {
  w83792d_write_value(client, W83792D_REG_CONFIG, 0x80);
 }





 vid_in_b = w83792d_read_value(client, W83792D_REG_VID_IN_B);
 w83792d_write_value(client, W83792D_REG_VID_IN_B,
       vid_in_b & 0xbf);

 temp2_cfg = w83792d_read_value(client, W83792D_REG_TEMP2_CONFIG);
 temp3_cfg = w83792d_read_value(client, W83792D_REG_TEMP3_CONFIG);
 w83792d_write_value(client, W83792D_REG_TEMP2_CONFIG,
    temp2_cfg & 0xe6);
 w83792d_write_value(client, W83792D_REG_TEMP3_CONFIG,
    temp3_cfg & 0xe6);


 w83792d_write_value(client, W83792D_REG_CONFIG,
       (w83792d_read_value(client,
      W83792D_REG_CONFIG) & 0xf7)
       | 0x01);
}
