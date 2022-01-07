
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ is_em2800; } ;
struct em28xx {TYPE_1__ board; } ;


 int EM28XX_R26_COMPR ;
 int EM28XX_R30_HSCALELOW ;
 int EM28XX_R32_VSCALELOW ;
 int em28xx_write_reg_bits (struct em28xx*,int ,int,int) ;
 int em28xx_write_regs (struct em28xx*,int ,char*,int) ;

__attribute__((used)) static int em28xx_scaler_set(struct em28xx *dev, u16 h, u16 v)
{
 u8 mode;


 if (dev->board.is_em2800) {
  mode = (v ? 0x20 : 0x00) | (h ? 0x10 : 0x00);
 } else {
  u8 buf[2];

  buf[0] = h;
  buf[1] = h >> 8;
  em28xx_write_regs(dev, EM28XX_R30_HSCALELOW, (char *)buf, 2);

  buf[0] = v;
  buf[1] = v >> 8;
  em28xx_write_regs(dev, EM28XX_R32_VSCALELOW, (char *)buf, 2);


  mode = (h || v) ? 0x30 : 0x00;
 }
 return em28xx_write_reg_bits(dev, EM28XX_R26_COMPR, mode, 0x30);
}
