
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txerr_cnt; } ;
struct b43legacy_wldev {TYPE_1__ phy; } ;


 int B43legacy_PHY_TX_BADNESS_LIMIT ;
 int atomic_set (int *,int ) ;
 int b43legacy_phy_xmitpower (struct b43legacy_wldev*) ;
 int wmb () ;

__attribute__((used)) static void b43legacy_periodic_every15sec(struct b43legacy_wldev *dev)
{
 b43legacy_phy_xmitpower(dev);

 atomic_set(&dev->phy.txerr_cnt, B43legacy_PHY_TX_BADNESS_LIMIT);
 wmb();
}
