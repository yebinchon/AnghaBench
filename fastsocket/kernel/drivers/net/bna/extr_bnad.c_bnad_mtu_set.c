
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtu_comp_status; int mtu_comp; } ;
struct TYPE_4__ {int enet; } ;
struct bnad {TYPE_1__ bnad_completions; int bna_lock; TYPE_2__ bna; } ;


 int bna_enet_mtu_set (int *,int,int ) ;
 int bnad_cb_enet_mtu_set ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
bnad_mtu_set(struct bnad *bnad, int mtu)
{
 unsigned long flags;

 init_completion(&bnad->bnad_completions.mtu_comp);

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_enet_mtu_set(&bnad->bna.enet, mtu, bnad_cb_enet_mtu_set);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 wait_for_completion(&bnad->bnad_completions.mtu_comp);

 return bnad->bnad_completions.mtu_comp_status;
}
