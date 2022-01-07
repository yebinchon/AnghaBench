
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm97xx {int dev; } ;


 int AC97_AUX ;
 int AC97_VIDEO ;
 int AC97_WM97XX_DIGITISER1 ;
 int AC97_WM97XX_DIGITISER2 ;
 int WM9705_PIL ;
 int WM97XX_DELAY (int) ;
 int WM97XX_RPR ;
 int delay ;
 int* delay_table ;
 int dev_dbg (int ,char*,...) ;
 int mask ;
 int pdd ;
 int pil ;
 scalar_t__ pressure ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

__attribute__((used)) static void wm9705_phy_init(struct wm97xx *wm)
{
 u16 dig1 = 0, dig2 = WM97XX_RPR;





 wm97xx_reg_write(wm, AC97_AUX, 0x8000);
 wm97xx_reg_write(wm, AC97_VIDEO, 0x8000);


 if (pil == 2) {
  dig2 |= WM9705_PIL;
  dev_dbg(wm->dev,
   "setting pressure measurement current to 400uA.");
 } else if (pil)
  dev_dbg(wm->dev,
   "setting pressure measurement current to 200uA.");
 if (!pil)
  pressure = 0;


 if (delay != 4) {
  if (delay < 0 || delay > 15) {
   dev_dbg(wm->dev, "supplied delay out of range.");
   delay = 4;
  }
 }
 dig1 &= 0xff0f;
 dig1 |= WM97XX_DELAY(delay);
 dev_dbg(wm->dev, "setting adc sample delay to %d u Secs.",
  delay_table[delay]);


 dig2 |= (pdd & 0x000f);
 dev_dbg(wm->dev, "setting pdd to Vmid/%d", 1 - (pdd & 0x000f));


 dig2 |= ((mask & 0x3) << 4);

 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER1, dig1);
 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER2, dig2);
}
