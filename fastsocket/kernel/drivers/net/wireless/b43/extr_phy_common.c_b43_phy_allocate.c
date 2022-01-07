
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct b43_phy {int type; TYPE_1__* ops; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct TYPE_7__ {int (* allocate ) (struct b43_wldev*) ;} ;
 scalar_t__ B43_WARN_ON (int) ;
 int ENODEV ;
 TYPE_1__ b43_phyops_a ;
 TYPE_1__ b43_phyops_g ;
 TYPE_1__ b43_phyops_ht ;
 TYPE_1__ b43_phyops_lcn ;
 TYPE_1__ b43_phyops_lp ;
 TYPE_1__ b43_phyops_n ;
 int stub1 (struct b43_wldev*) ;

int b43_phy_allocate(struct b43_wldev *dev)
{
 struct b43_phy *phy = &(dev->phy);
 int err;

 phy->ops = ((void*)0);

 switch (phy->type) {
 case 133:
  phy->ops = &b43_phyops_a;
  break;
 case 132:
  phy->ops = &b43_phyops_g;
  break;
 case 128:



  break;
 case 129:



  break;
 case 131:



  break;
 case 130:



  break;
 }
 if (B43_WARN_ON(!phy->ops))
  return -ENODEV;

 err = phy->ops->allocate(dev);
 if (err)
  phy->ops = ((void*)0);

 return err;
}
