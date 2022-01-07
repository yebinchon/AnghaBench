
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* n; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int init_por; } ;


 int R2057_RFPLL_MASTER ;
 int R2057_RFPLL_MISC_CAL_RESETN ;
 int R2057_XTALPUOVR_PINCTRL ;
 int R2057_XTAL_CONFIG2 ;
 int b43_radio_2057_rcal (struct b43_wldev*) ;
 int b43_radio_2057_rccal (struct b43_wldev*) ;
 int b43_radio_mask (struct b43_wldev*,int ,int) ;
 int b43_radio_set (struct b43_wldev*,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void b43_radio_2057_init_post(struct b43_wldev *dev)
{
 b43_radio_set(dev, R2057_XTALPUOVR_PINCTRL, 0x1);

 b43_radio_set(dev, R2057_RFPLL_MISC_CAL_RESETN, 0x78);
 b43_radio_set(dev, R2057_XTAL_CONFIG2, 0x80);
 mdelay(2);
 b43_radio_mask(dev, R2057_RFPLL_MISC_CAL_RESETN, ~0x78);
 b43_radio_mask(dev, R2057_XTAL_CONFIG2, ~0x80);

 if (dev->phy.n->init_por) {
  b43_radio_2057_rcal(dev);
  b43_radio_2057_rccal(dev);
 }
 b43_radio_mask(dev, R2057_RFPLL_MASTER, ~0x8);

 dev->phy.n->init_por = 0;
}
