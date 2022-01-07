
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm97xx {int dev; } ;


 int AC97_GPIO_CFG ;
 int AC97_MISC_AFE ;
 int AC97_WM97XX_DIGITISER1 ;
 int AC97_WM97XX_DIGITISER2 ;
 int WM9712_45W ;
 int WM9712_PIL ;
 int WM9712_RPU (int) ;
 int WM9712_WAIT ;
 int WM97XX_DELAY (int) ;
 int WM97XX_GPIO_4 ;
 int WM97XX_RPR ;
 scalar_t__ coord ;
 int delay ;
 int* delay_table ;
 int dev_dbg (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 scalar_t__ five_wire ;
 int mask ;
 int pil ;
 scalar_t__ pressure ;
 int rpu ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

__attribute__((used)) static void wm9712_phy_init(struct wm97xx *wm)
{
 u16 dig1 = 0;
 u16 dig2 = WM97XX_RPR | WM9712_RPU(1);


 if (rpu) {
  dig2 &= 0xffc0;
  dig2 |= WM9712_RPU(rpu);
  dev_dbg(wm->dev, "setting pen detect pull-up to %d Ohms",
   64000 / rpu);
 }


 if (five_wire) {
  dig2 |= WM9712_45W;
  dev_dbg(wm->dev, "setting 5-wire touchscreen mode.");

  if (pil) {
   dev_warn(wm->dev, "pressure measurement is not "
     "supported in 5-wire mode\n");
   pil = 0;
  }
 }


 if (pil == 2) {
  dig2 |= WM9712_PIL;
  dev_dbg(wm->dev,
   "setting pressure measurement current to 400uA.");
 } else if (pil)
  dev_dbg(wm->dev,
   "setting pressure measurement current to 200uA.");
 if (!pil)
  pressure = 0;


 if (delay < 0 || delay > 15) {
  dev_dbg(wm->dev, "supplied delay out of range.");
  delay = 4;
 }
 dig1 &= 0xff0f;
 dig1 |= WM97XX_DELAY(delay);
 dev_dbg(wm->dev, "setting adc sample delay to %d u Secs.",
  delay_table[delay]);


 dig2 |= ((mask & 0x3) << 6);
 if (mask) {
  u16 reg;

  reg = wm97xx_reg_read(wm, AC97_MISC_AFE);
  wm97xx_reg_write(wm, AC97_MISC_AFE, reg | WM97XX_GPIO_4);
  reg = wm97xx_reg_read(wm, AC97_GPIO_CFG);
  wm97xx_reg_write(wm, AC97_GPIO_CFG, reg | WM97XX_GPIO_4);
 }


 if (coord)
  dig2 |= WM9712_WAIT;

 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER1, dig1);
 wm97xx_reg_write(wm, AC97_WM97XX_DIGITISER2, dig2);
}
