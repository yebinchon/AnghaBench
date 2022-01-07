
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct b43_phy_lp* kzalloc (int,int ) ;

__attribute__((used)) static int b43_lpphy_op_allocate(struct b43_wldev *dev)
{
 struct b43_phy_lp *lpphy;

 lpphy = kzalloc(sizeof(*lpphy), GFP_KERNEL);
 if (!lpphy)
  return -ENOMEM;
 dev->phy.lp = lpphy;

 return 0;
}
