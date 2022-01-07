
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cas {int pm_mutex; TYPE_1__* pdev; scalar_t__ opened; int napi; } ;
struct TYPE_2__ {int irq; } ;


 int cas_begin_auto_negotiation (struct cas*,int *) ;
 int cas_clean_rings (struct cas*) ;
 int cas_free_rxds (struct cas*) ;
 int cas_lock_all_save (struct cas*,unsigned long) ;
 int cas_phy_init (struct cas*) ;
 int cas_reset (struct cas*,int ) ;
 int cas_spare_free (struct cas*) ;
 int cas_tx_tiny_free (struct cas*) ;
 int cas_unlock_all_restore (struct cas*,unsigned long) ;
 int free_irq (int ,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_disable (int *) ;
 struct cas* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int cas_close(struct net_device *dev)
{
 unsigned long flags;
 struct cas *cp = netdev_priv(dev);





 mutex_lock(&cp->pm_mutex);

 netif_stop_queue(dev);


 cas_lock_all_save(cp, flags);
 cp->opened = 0;
 cas_reset(cp, 0);
 cas_phy_init(cp);
 cas_begin_auto_negotiation(cp, ((void*)0));
 cas_clean_rings(cp);
 cas_unlock_all_restore(cp, flags);

 free_irq(cp->pdev->irq, (void *) dev);
 cas_spare_free(cp);
 cas_free_rxds(cp);
 cas_tx_tiny_free(cp);
 mutex_unlock(&cp->pm_mutex);
 return 0;
}
