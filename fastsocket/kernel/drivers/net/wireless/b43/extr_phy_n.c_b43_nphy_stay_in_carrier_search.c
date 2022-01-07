
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_n {scalar_t__ deaf_count; int const* clip_state; int classifier_state; } ;


 int b43_nphy_classifier (struct b43_wldev*,int,int ) ;
 int b43_nphy_read_clip_detection (struct b43_wldev*,int const*) ;
 int b43_nphy_reset_cca (struct b43_wldev*) ;
 int b43_nphy_write_clip_detection (struct b43_wldev*,int const*) ;

__attribute__((used)) static void b43_nphy_stay_in_carrier_search(struct b43_wldev *dev, bool enable)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = phy->n;

 if (enable) {
  static const u16 clip[] = { 0xFFFF, 0xFFFF };
  if (nphy->deaf_count++ == 0) {
   nphy->classifier_state = b43_nphy_classifier(dev, 0, 0);
   b43_nphy_classifier(dev, 0x7, 0);
   b43_nphy_read_clip_detection(dev, nphy->clip_state);
   b43_nphy_write_clip_detection(dev, clip);
  }
  b43_nphy_reset_cca(dev);
 } else {
  if (--nphy->deaf_count == 0) {
   b43_nphy_classifier(dev, 0x7, nphy->classifier_state);
   b43_nphy_write_clip_detection(dev, nphy->clip_state);
  }
 }
}
