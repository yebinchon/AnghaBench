
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm97xx {int* dig; } ;


 int AC97_EXTENDED_MID ;
 int AC97_WM9713_DIG3 ;
 int AC97_WM97XX_DIGITISER_RD ;
 int WM97XX_PRP_DET_DIG ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

__attribute__((used)) static void wm9713_dig_enable(struct wm97xx *wm, int enable)
{
 u16 val;

 if (enable) {
  val = wm97xx_reg_read(wm, AC97_EXTENDED_MID);
  wm97xx_reg_write(wm, AC97_EXTENDED_MID, val & 0x7fff);
  wm97xx_reg_write(wm, AC97_WM9713_DIG3, wm->dig[2] |
     WM97XX_PRP_DET_DIG);
  wm97xx_reg_read(wm, AC97_WM97XX_DIGITISER_RD);
 } else {
  wm97xx_reg_write(wm, AC97_WM9713_DIG3, wm->dig[2] &
     ~WM97XX_PRP_DET_DIG);
  val = wm97xx_reg_read(wm, AC97_EXTENDED_MID);
  wm97xx_reg_write(wm, AC97_EXTENDED_MID, val | 0x8000);
 }
}
