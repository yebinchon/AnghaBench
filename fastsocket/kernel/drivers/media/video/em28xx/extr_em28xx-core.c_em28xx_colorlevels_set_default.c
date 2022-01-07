
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int dummy; } ;


 int EM28XX_R14_GAMMA ;
 int EM28XX_R15_RGAIN ;
 int EM28XX_R16_GGAIN ;
 int EM28XX_R17_BGAIN ;
 int EM28XX_R18_ROFFSET ;
 int EM28XX_R19_GOFFSET ;
 int EM28XX_R1A_BOFFSET ;
 int EM28XX_R20_YGAIN ;
 int EM28XX_R21_YOFFSET ;
 int EM28XX_R22_UVGAIN ;
 int EM28XX_R23_UOFFSET ;
 int EM28XX_R24_VOFFSET ;
 int EM28XX_R25_SHARPNESS ;
 int em28xx_write_reg (struct em28xx*,int ,int) ;

int em28xx_colorlevels_set_default(struct em28xx *dev)
{
 em28xx_write_reg(dev, EM28XX_R20_YGAIN, 0x10);
 em28xx_write_reg(dev, EM28XX_R21_YOFFSET, 0x00);
 em28xx_write_reg(dev, EM28XX_R22_UVGAIN, 0x10);
 em28xx_write_reg(dev, EM28XX_R23_UOFFSET, 0x00);
 em28xx_write_reg(dev, EM28XX_R24_VOFFSET, 0x00);
 em28xx_write_reg(dev, EM28XX_R25_SHARPNESS, 0x00);

 em28xx_write_reg(dev, EM28XX_R14_GAMMA, 0x20);
 em28xx_write_reg(dev, EM28XX_R15_RGAIN, 0x20);
 em28xx_write_reg(dev, EM28XX_R16_GGAIN, 0x20);
 em28xx_write_reg(dev, EM28XX_R17_BGAIN, 0x20);
 em28xx_write_reg(dev, EM28XX_R18_ROFFSET, 0x00);
 em28xx_write_reg(dev, EM28XX_R19_GOFFSET, 0x00);
 return em28xx_write_reg(dev, EM28XX_R1A_BOFFSET, 0x00);
}
