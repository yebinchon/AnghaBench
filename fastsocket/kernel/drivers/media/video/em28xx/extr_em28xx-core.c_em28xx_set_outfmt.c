
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct em28xx {int vinmode; int vinctl; int vbi_width; int vbi_height; int norm; TYPE_1__* format; } ;
struct TYPE_2__ {int reg; } ;


 int EM28XX_R10_VINMODE ;
 int EM28XX_R11_VINCTRL ;
 int EM28XX_R27_OUTFMT ;
 int EM28XX_R34_VBI_START_H ;
 int EM28XX_R35_VBI_START_V ;
 int EM28XX_R36_VBI_WIDTH ;
 int EM28XX_R37_VBI_HEIGHT ;
 int EM28XX_VINCTRL_VBI_RAW ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int em28xx_vbi_supported (struct em28xx*) ;
 int em28xx_write_reg (struct em28xx*,int ,int) ;
 int em28xx_write_reg_bits (struct em28xx*,int ,int,int) ;

int em28xx_set_outfmt(struct em28xx *dev)
{
 int ret;
 u8 vinctrl;

 ret = em28xx_write_reg_bits(dev, EM28XX_R27_OUTFMT,
    dev->format->reg | 0x20, 0xff);
 if (ret < 0)
   return ret;

 ret = em28xx_write_reg(dev, EM28XX_R10_VINMODE, dev->vinmode);
 if (ret < 0)
  return ret;

 vinctrl = dev->vinctl;
 if (em28xx_vbi_supported(dev) == 1) {
  vinctrl |= EM28XX_VINCTRL_VBI_RAW;
  em28xx_write_reg(dev, EM28XX_R34_VBI_START_H, 0x00);
  em28xx_write_reg(dev, EM28XX_R36_VBI_WIDTH, dev->vbi_width/4);
  em28xx_write_reg(dev, EM28XX_R37_VBI_HEIGHT, dev->vbi_height);
  if (dev->norm & V4L2_STD_525_60) {

   em28xx_write_reg(dev, EM28XX_R35_VBI_START_V, 0x09);
  } else if (dev->norm & V4L2_STD_625_50) {

   em28xx_write_reg(dev, EM28XX_R35_VBI_START_V, 0x07);
  }
 }

 return em28xx_write_reg(dev, EM28XX_R11_VINCTRL, vinctrl);
}
