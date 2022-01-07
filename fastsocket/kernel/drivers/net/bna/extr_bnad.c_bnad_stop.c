
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int enet_comp; } ;
struct TYPE_3__ {int enet; } ;
struct bnad {int cfg_flags; int conf_mutex; TYPE_2__ bnad_completions; int bna_lock; TYPE_1__ bna; } ;


 int BNAD_CF_ALLMULTI ;
 int BNAD_CF_PROMISC ;
 int BNA_HARD_CLEANUP ;
 int bna_enet_disable (int *,int ,int ) ;
 int bnad_cb_enet_disabled ;
 int bnad_destroy_rx (struct bnad*,int ) ;
 int bnad_destroy_tx (struct bnad*,int ) ;
 int bnad_mbox_irq_sync (struct bnad*) ;
 int bnad_stats_timer_stop (struct bnad*) ;
 int init_completion (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
bnad_stop(struct net_device *netdev)
{
 struct bnad *bnad = netdev_priv(netdev);
 unsigned long flags;

 mutex_lock(&bnad->conf_mutex);


 bnad_stats_timer_stop(bnad);

 init_completion(&bnad->bnad_completions.enet_comp);

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_enet_disable(&bnad->bna.enet, BNA_HARD_CLEANUP,
   bnad_cb_enet_disabled);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 wait_for_completion(&bnad->bnad_completions.enet_comp);

 bnad_destroy_tx(bnad, 0);
 bnad_destroy_rx(bnad, 0);


 bnad->cfg_flags &= ~(BNAD_CF_ALLMULTI | BNAD_CF_PROMISC);


 bnad_mbox_irq_sync(bnad);

 mutex_unlock(&bnad->conf_mutex);

 return 0;
}
