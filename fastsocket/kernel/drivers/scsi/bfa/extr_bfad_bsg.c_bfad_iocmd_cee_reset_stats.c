
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cee; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfa_bsg_gen_s {scalar_t__ status; } ;


 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ bfa_cee_reset_stats (int *,int *,int *) ;
 int bfa_trc (struct bfad_s*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_cee_reset_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_cee_reset_stats(&bfad->bfa.modules.cee, ((void*)0), ((void*)0));
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK)
  bfa_trc(bfad, 0x5555);
 return 0;
}
