
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_wldev {int wl; } ;


 int B43_PHY_HT_RF_SEQ_MODE ;
 int B43_PHY_HT_RF_SEQ_STATUS ;
 int B43_PHY_HT_RF_SEQ_TRIG ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int b43err (int ,char*) ;
 int msleep (int) ;

__attribute__((used)) static void b43_phy_ht_force_rf_sequence(struct b43_wldev *dev, u16 rf_seq)
{
 u8 i;

 u16 save_seq_mode = b43_phy_read(dev, B43_PHY_HT_RF_SEQ_MODE);
 b43_phy_set(dev, B43_PHY_HT_RF_SEQ_MODE, 0x3);

 b43_phy_set(dev, B43_PHY_HT_RF_SEQ_TRIG, rf_seq);
 for (i = 0; i < 200; i++) {
  if (!(b43_phy_read(dev, B43_PHY_HT_RF_SEQ_STATUS) & rf_seq)) {
   i = 0;
   break;
  }
  msleep(1);
 }
 if (i)
  b43err(dev->wl, "Forcing RF sequence timeout\n");

 b43_phy_write(dev, B43_PHY_HT_RF_SEQ_MODE, save_seq_mode);
}
