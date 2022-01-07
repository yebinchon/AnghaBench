
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_lcn* lcn; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_lcn {int dummy; } ;


 int memset (struct b43_phy_lcn*,int ,int) ;

__attribute__((used)) static void b43_phy_lcn_op_prepare_structs(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_lcn *phy_lcn = phy->lcn;

 memset(phy_lcn, 0, sizeof(*phy_lcn));
}
