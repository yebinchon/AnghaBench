
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct bfa_bsg_gen_s {scalar_t__ status; } ;


 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ bfa_dport_disable (int *,int ,struct bfad_hal_comp*) ;
 int bfa_trc (struct bfad_s*,scalar_t__) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_diag_dport_disable(struct bfad_s *bfad, void *pcmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)pcmd;
 unsigned long flags;
 struct bfad_hal_comp fcomp;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_dport_disable(&bfad->bfa, bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK)
  bfa_trc(bfad, iocmd->status);
 else {
  wait_for_completion(&fcomp.comp);
  iocmd->status = fcomp.status;
 }
 return 0;
}
