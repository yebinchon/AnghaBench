
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_vbi_ram_value {int reg; int* values; } ;


 unsigned int TVP5150_CONF_RAM_ADDR_HIGH ;
 unsigned int TVP5150_CONF_RAM_ADDR_LOW ;
 unsigned int TVP5150_FULL_FIELD_ENA ;
 unsigned int TVP5150_LINE_MODE_END ;
 unsigned int TVP5150_LINE_MODE_INI ;
 unsigned int TVP5150_VDP_CONF_RAM_DATA ;
 int tvp5150_write (struct v4l2_subdev*,unsigned int,int) ;

__attribute__((used)) static int tvp5150_vdp_init(struct v4l2_subdev *sd,
    const struct i2c_vbi_ram_value *regs)
{
 unsigned int i;


 tvp5150_write(sd, TVP5150_FULL_FIELD_ENA, 0);


 for (i = TVP5150_LINE_MODE_INI; i <= TVP5150_LINE_MODE_END; i++)
  tvp5150_write(sd, i, 0xff);


 while (regs->reg != (u16)-1) {
  tvp5150_write(sd, TVP5150_CONF_RAM_ADDR_HIGH, regs->reg >> 8);
  tvp5150_write(sd, TVP5150_CONF_RAM_ADDR_LOW, regs->reg);

  for (i = 0; i < 16; i++)
   tvp5150_write(sd, TVP5150_VDP_CONF_RAM_DATA, regs->values[i]);

  regs++;
 }
 return 0;
}
