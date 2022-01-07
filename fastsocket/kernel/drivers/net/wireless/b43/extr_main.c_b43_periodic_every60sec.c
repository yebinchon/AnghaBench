
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_operations* ops; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_operations {int (* pwork_60sec ) (struct b43_wldev*) ;} ;


 int B43_TXPWR_IGNORE_TIME ;
 int b43_phy_txpower_check (struct b43_wldev*,int ) ;
 int stub1 (struct b43_wldev*) ;

__attribute__((used)) static void b43_periodic_every60sec(struct b43_wldev *dev)
{
 const struct b43_phy_operations *ops = dev->phy.ops;

 if (ops->pwork_60sec)
  ops->pwork_60sec(dev);


 b43_phy_txpower_check(dev, B43_TXPWR_IGNORE_TIME);
}
