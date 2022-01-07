
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int radio_ver; } ;
struct b43_wldev {TYPE_2__* dev; TYPE_1__ phy; } ;
struct TYPE_4__ {int chip_id; } ;


 int B43_LPPHY_FOURWIRE_CTL ;
 int B43_PHY_OFDM (int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int lpphy_2062_init (struct b43_wldev*) ;
 int lpphy_2063_init (struct b43_wldev*) ;
 int lpphy_sync_stx (struct b43_wldev*) ;
 int udelay (int) ;

__attribute__((used)) static void lpphy_radio_init(struct b43_wldev *dev)
{

 b43_phy_set(dev, B43_LPPHY_FOURWIRE_CTL, 0x2);
 udelay(1);
 b43_phy_mask(dev, B43_LPPHY_FOURWIRE_CTL, 0xFFFD);
 udelay(1);

 if (dev->phy.radio_ver == 0x2062) {
  lpphy_2062_init(dev);
 } else {
  lpphy_2063_init(dev);
  lpphy_sync_stx(dev);
  b43_phy_write(dev, B43_PHY_OFDM(0xF0), 0x5F80);
  b43_phy_write(dev, B43_PHY_OFDM(0xF1), 0);
  if (dev->dev->chip_id == 0x4325) {

  }
 }
}
