
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_phy {scalar_t__ type; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_tx_legacy_rate_phy_ctl_entry {int modulation; int coding_rate; } ;


 scalar_t__ B43_PHYTYPE_LP ;
 int B43_TXH_PHY1_BW_20 ;
 int B43_TXH_PHY1_MODE_SISO ;
 scalar_t__ b43_is_cck_rate (int ) ;
 struct b43_tx_legacy_rate_phy_ctl_entry* b43_tx_legacy_rate_phy_ctl_ent (int ) ;

__attribute__((used)) static u16 b43_generate_tx_phy_ctl1(struct b43_wldev *dev, u8 bitrate)
{
 const struct b43_phy *phy = &dev->phy;
 const struct b43_tx_legacy_rate_phy_ctl_entry *e;
 u16 control = 0;
 u16 bw;

 if (phy->type == B43_PHYTYPE_LP)
  bw = B43_TXH_PHY1_BW_20;
 else
  bw = B43_TXH_PHY1_BW_20;

 if (0) {
 } else if (b43_is_cck_rate(bitrate) && phy->type != B43_PHYTYPE_LP) {
  control = bw;
 } else {
  control = bw;
  e = b43_tx_legacy_rate_phy_ctl_ent(bitrate);
  if (e) {
   control |= e->coding_rate;
   control |= e->modulation;
  }
  control |= B43_TXH_PHY1_MODE_SISO;
 }

 return control;
}
