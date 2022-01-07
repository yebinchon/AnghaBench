
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_lcn* lcn; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lcn {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct b43_phy_lcn* kzalloc (int,int ) ;

__attribute__((used)) static int b43_phy_lcn_op_allocate(struct b43_wldev *dev)
{
 struct b43_phy_lcn *phy_lcn;

 phy_lcn = kzalloc(sizeof(*phy_lcn), GFP_KERNEL);
 if (!phy_lcn)
  return -ENOMEM;
 dev->phy.lcn = phy_lcn;

 return 0;
}
