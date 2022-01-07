
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int OUTPUT_FORMAT_CTRL2_A ;
 int OUTPUT_FORMAT_CTRL2_B ;
 int reg_write (int ,int ) ;

__attribute__((used)) static int mt9m111_setup_pixfmt(struct i2c_client *client, u16 outfmt)
{
 int ret;

 ret = reg_write(OUTPUT_FORMAT_CTRL2_A, outfmt);
 if (!ret)
  ret = reg_write(OUTPUT_FORMAT_CTRL2_B, outfmt);
 return ret;
}
