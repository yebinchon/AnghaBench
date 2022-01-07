
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_diag_lb_stat_s {int status; } ;


 int bfa_fcdiag_lb_is_running (int *) ;
 int bfa_trc (struct bfad_s*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_diag_lb_stat(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_diag_lb_stat_s *iocmd =
   (struct bfa_bsg_diag_lb_stat_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_fcdiag_lb_is_running(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 bfa_trc(bfad, iocmd->status);

 return 0;
}
