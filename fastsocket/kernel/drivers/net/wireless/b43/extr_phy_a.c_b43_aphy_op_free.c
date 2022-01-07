
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_a* a; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_a {struct b43_phy_a* tssi2dbm; } ;


 int kfree (struct b43_phy_a*) ;

__attribute__((used)) static void b43_aphy_op_free(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_a *aphy = phy->a;

 kfree(aphy->tssi2dbm);
 aphy->tssi2dbm = ((void*)0);

 kfree(aphy);
 dev->phy.a = ((void*)0);
}
