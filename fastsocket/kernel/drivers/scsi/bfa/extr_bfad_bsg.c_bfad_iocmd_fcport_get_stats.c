
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct bfa_cb_pending_q_s {int dummy; } ;
struct bfa_bsg_fcport_stats_s {scalar_t__ status; int stats; } ;
typedef int bfa_cb_cbfn_t ;


 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ bfa_fcport_get_stats (int *,struct bfa_cb_pending_q_s*) ;
 int bfa_pending_q_init (struct bfa_cb_pending_q_s*,int ,struct bfad_hal_comp*,int *) ;
 int bfa_trc (struct bfad_s*,scalar_t__) ;
 scalar_t__ bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_fcport_get_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_fcport_stats_s *iocmd =
    (struct bfa_bsg_fcport_stats_s *)cmd;
 struct bfad_hal_comp fcomp;
 unsigned long flags;
 struct bfa_cb_pending_q_s cb_qe;

 init_completion(&fcomp.comp);
 bfa_pending_q_init(&cb_qe, (bfa_cb_cbfn_t)bfad_hcb_comp,
      &fcomp, &iocmd->stats);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_fcport_get_stats(&bfad->bfa, &cb_qe);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK) {
  bfa_trc(bfad, iocmd->status);
  goto out;
 }
 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
