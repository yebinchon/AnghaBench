
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_operations* ops; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_operations {int (* exit ) (struct b43_wldev*) ;int (* software_rfkill ) (struct b43_wldev*,int) ;} ;


 int stub1 (struct b43_wldev*,int) ;
 int stub2 (struct b43_wldev*) ;

void b43_phy_exit(struct b43_wldev *dev)
{
 const struct b43_phy_operations *ops = dev->phy.ops;

 ops->software_rfkill(dev, 1);
 if (ops->exit)
  ops->exit(dev);
}
