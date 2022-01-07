
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bnad_rx_info {int rx; } ;
struct TYPE_2__ {int mcast_comp_status; int mcast_comp; } ;
struct bnad {TYPE_1__ bnad_completions; int bna_lock; struct bnad_rx_info* rx_info; } ;


 int BNA_CB_SUCCESS ;
 int ENODEV ;
 int bna_rx_mcast_add (int ,int *,int ) ;
 scalar_t__ bnad_bcast_addr ;
 int bnad_cb_rx_mcast_add ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bnad_enable_default_bcast(struct bnad *bnad)
{
 struct bnad_rx_info *rx_info = &bnad->rx_info[0];
 int ret;
 unsigned long flags;

 init_completion(&bnad->bnad_completions.mcast_comp);

 spin_lock_irqsave(&bnad->bna_lock, flags);
 ret = bna_rx_mcast_add(rx_info->rx, (u8 *)bnad_bcast_addr,
    bnad_cb_rx_mcast_add);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 if (ret == BNA_CB_SUCCESS)
  wait_for_completion(&bnad->bnad_completions.mcast_comp);
 else
  return -ENODEV;

 if (bnad->bnad_completions.mcast_comp_status != BNA_CB_SUCCESS)
  return -ENODEV;

 return 0;
}
