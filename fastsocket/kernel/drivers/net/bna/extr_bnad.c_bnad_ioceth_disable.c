
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ioc_comp_status; int ioc_comp; } ;
struct TYPE_4__ {int ioceth; } ;
struct bnad {TYPE_1__ bnad_completions; int bna_lock; TYPE_2__ bna; } ;


 int BNAD_IOCETH_TIMEOUT ;
 int BNA_HARD_CLEANUP ;
 int bna_ioceth_disable (int *,int ) ;
 int init_completion (int *) ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int
bnad_ioceth_disable(struct bnad *bnad)
{
 unsigned long flags;
 int err = 0;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 init_completion(&bnad->bnad_completions.ioc_comp);
 bna_ioceth_disable(&bnad->bna.ioceth, BNA_HARD_CLEANUP);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 wait_for_completion_timeout(&bnad->bnad_completions.ioc_comp,
  msecs_to_jiffies(BNAD_IOCETH_TIMEOUT));

 err = bnad->bnad_completions.ioc_comp_status;
 return err;
}
