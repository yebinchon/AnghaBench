
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43legacy_phy {int dummy; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;
struct b43legacy_lopair {int dummy; } ;


 int B43legacy_WARN_ON (int) ;
 struct b43legacy_lopair* b43legacy_get_lopair (struct b43legacy_phy*,int const,int) ;

__attribute__((used)) static inline
struct b43legacy_lopair *b43legacy_find_lopair(struct b43legacy_wldev *dev,
            u16 bbatt,
            u16 rfatt,
            u16 tx)
{
 static const u8 dict[10] = { 11, 10, 11, 12, 13, 12, 13, 12, 13, 12 };
 struct b43legacy_phy *phy = &dev->phy;

 if (bbatt > 6)
  bbatt = 6;
 B43legacy_WARN_ON(rfatt >= 10);

 if (tx == 3)
  return b43legacy_get_lopair(phy, rfatt, bbatt);
 return b43legacy_get_lopair(phy, dict[rfatt], bbatt);
}
