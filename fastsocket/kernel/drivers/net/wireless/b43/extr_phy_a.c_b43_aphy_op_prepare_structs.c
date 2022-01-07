
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_a* a; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_a {void* tssi2dbm; int tgt_idle_tssi; } ;


 int memset (struct b43_phy_a*,int ,int) ;

__attribute__((used)) static void b43_aphy_op_prepare_structs(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_a *aphy = phy->a;
 const void *tssi2dbm;
 int tgt_idle_tssi;



 tssi2dbm = aphy->tssi2dbm;
 tgt_idle_tssi = aphy->tgt_idle_tssi;


 memset(aphy, 0, sizeof(*aphy));

 aphy->tssi2dbm = tssi2dbm;
 aphy->tgt_idle_tssi = tgt_idle_tssi;



}
