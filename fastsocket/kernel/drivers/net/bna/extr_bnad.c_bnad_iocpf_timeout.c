
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ioc; } ;
struct TYPE_4__ {TYPE_1__ ioceth; } ;
struct bnad {int bna_lock; TYPE_2__ bna; } ;


 int bfa_nw_iocpf_timeout (void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bnad_iocpf_timeout(unsigned long data)
{
 struct bnad *bnad = (struct bnad *)data;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bfa_nw_iocpf_timeout((void *) &bnad->bna.ioceth.ioc);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
