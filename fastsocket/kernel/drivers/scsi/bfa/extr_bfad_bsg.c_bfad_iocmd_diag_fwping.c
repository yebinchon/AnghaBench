
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct bfa_bsg_diag_fwping_s {int status; int result; int pattern; int cnt; } ;


 int BFA_DIAG_MOD (int *) ;
 scalar_t__ BFA_STATUS_OK ;
 int bfa_diag_fwping (int ,int ,int ,int *,int ,struct bfad_hal_comp*) ;
 int bfa_trc (struct bfad_s*,int) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_diag_fwping(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_diag_fwping_s *iocmd =
   (struct bfa_bsg_diag_fwping_s *)cmd;
 struct bfad_hal_comp fcomp;
 unsigned long flags;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_diag_fwping(BFA_DIAG_MOD(&bfad->bfa), iocmd->cnt,
    iocmd->pattern, &iocmd->result,
    bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 bfa_trc(bfad, iocmd->status);
 if (iocmd->status != BFA_STATUS_OK)
  goto out;
 bfa_trc(bfad, 0x77771);
 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
