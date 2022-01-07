
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fec_enet_private {int mii_lock; scalar_t__ hwp; } ;
struct TYPE_4__ {int mii_regval; struct TYPE_4__* mii_next; int (* mii_func ) (int ,struct net_device*) ;} ;
typedef TYPE_1__ mii_list_t ;


 scalar_t__ FEC_MII_DATA ;
 TYPE_1__* mii_free ;
 TYPE_1__* mii_head ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int printk (char*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
fec_enet_mii(struct net_device *dev)
{
 struct fec_enet_private *fep;
 mii_list_t *mip;

 fep = netdev_priv(dev);
 spin_lock(&fep->mii_lock);

 if ((mip = mii_head) == ((void*)0)) {
  printk("MII and no head!\n");
  goto unlock;
 }

 if (mip->mii_func != ((void*)0))
  (*(mip->mii_func))(readl(fep->hwp + FEC_MII_DATA), dev);

 mii_head = mip->mii_next;
 mip->mii_next = mii_free;
 mii_free = mip;

 if ((mip = mii_head) != ((void*)0))
  writel(mip->mii_regval, fep->hwp + FEC_MII_DATA);

unlock:
 spin_unlock(&fep->mii_lock);
}
