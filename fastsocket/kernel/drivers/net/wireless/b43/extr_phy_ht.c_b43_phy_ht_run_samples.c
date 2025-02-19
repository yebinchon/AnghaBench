
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
struct b43_phy_ht {scalar_t__* bb_mult_save; } ;


 int B43_HTTAB16 (int,int) ;
 int B43_PHY_HT_IQLOCAL_CMDGCTL ;
 int B43_PHY_HT_RF_SEQ_MODE ;
 int B43_PHY_HT_RF_SEQ_MODE_CA_OVER ;
 int B43_PHY_HT_RF_SEQ_STATUS ;
 int B43_PHY_HT_SAMP_CMD ;
 int B43_PHY_HT_SAMP_DEP_CNT ;
 int B43_PHY_HT_SAMP_LOOP_CNT ;
 int B43_PHY_HT_SAMP_WAIT_CNT ;
 scalar_t__ b43_httab_read (struct b43_wldev*,int ) ;
 int b43_phy_mask (struct b43_wldev*,int ,int ) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int b43err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void b43_phy_ht_run_samples(struct b43_wldev *dev, u16 samps, u16 loops,
       u16 wait)
{
 struct b43_phy_ht *phy_ht = dev->phy.ht;
 u16 save_seq_mode;
 int i;

 for (i = 0; i < 3; i++) {
  if (phy_ht->bb_mult_save[i] < 0)
   phy_ht->bb_mult_save[i] = b43_httab_read(dev, B43_HTTAB16(13, 0x63 + i * 4));
 }

 b43_phy_write(dev, B43_PHY_HT_SAMP_DEP_CNT, samps - 1);
 if (loops != 0xFFFF)
  loops--;
 b43_phy_write(dev, B43_PHY_HT_SAMP_LOOP_CNT, loops);
 b43_phy_write(dev, B43_PHY_HT_SAMP_WAIT_CNT, wait);

 save_seq_mode = b43_phy_read(dev, B43_PHY_HT_RF_SEQ_MODE);
 b43_phy_set(dev, B43_PHY_HT_RF_SEQ_MODE,
      B43_PHY_HT_RF_SEQ_MODE_CA_OVER);


 b43_phy_mask(dev, B43_PHY_HT_SAMP_CMD, ~0);
 b43_phy_mask(dev, B43_PHY_HT_SAMP_CMD, ~0);
 b43_phy_mask(dev, B43_PHY_HT_IQLOCAL_CMDGCTL, ~0);
 b43_phy_set(dev, B43_PHY_HT_SAMP_CMD, 0x1);

 for (i = 0; i < 100; i++) {
  if (!(b43_phy_read(dev, B43_PHY_HT_RF_SEQ_STATUS) & 1)) {
   i = 0;
   break;
  }
  udelay(10);
 }
 if (i)
  b43err(dev->wl, "run samples timeout\n");

 b43_phy_write(dev, B43_PHY_HT_RF_SEQ_MODE, save_seq_mode);
}
