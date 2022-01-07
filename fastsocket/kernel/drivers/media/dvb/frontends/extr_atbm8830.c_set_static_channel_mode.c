
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atbm_state {int dummy; } ;


 int atbm8830_write_reg (struct atbm_state*,int,int) ;

__attribute__((used)) static int set_static_channel_mode(struct atbm_state *priv)
{
 int i;

 for (i = 0; i < 5; i++)
  atbm8830_write_reg(priv, 0x099B + i, 0x08);

 atbm8830_write_reg(priv, 0x095B, 0x7F);
 atbm8830_write_reg(priv, 0x09CB, 0x01);
 atbm8830_write_reg(priv, 0x09CC, 0x7F);
 atbm8830_write_reg(priv, 0x09CD, 0x7F);
 atbm8830_write_reg(priv, 0x0E01, 0x20);


 atbm8830_write_reg(priv, 0x0B03, 0x0A);
 atbm8830_write_reg(priv, 0x0935, 0x10);
 atbm8830_write_reg(priv, 0x0936, 0x08);
 atbm8830_write_reg(priv, 0x093E, 0x08);
 atbm8830_write_reg(priv, 0x096E, 0x06);


 atbm8830_write_reg(priv, 0x0B09, 0x00);

 atbm8830_write_reg(priv, 0x0B0A, 0x08);

 return 0;
}
