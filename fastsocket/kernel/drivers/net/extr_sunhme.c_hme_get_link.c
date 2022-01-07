
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct happy_meal {int sw_bmsr; int happy_lock; int tcvregs; int sw_bmcr; } ;


 int BMSR_LSTATUS ;
 int MII_BMCR ;
 int happy_meal_tcvr_read (struct happy_meal*,int ,int ) ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static u32 hme_get_link(struct net_device *dev)
{
 struct happy_meal *hp = netdev_priv(dev);

 spin_lock_irq(&hp->happy_lock);
 hp->sw_bmcr = happy_meal_tcvr_read(hp, hp->tcvregs, MII_BMCR);
 spin_unlock_irq(&hp->happy_lock);

 return (hp->sw_bmsr & BMSR_LSTATUS);
}
