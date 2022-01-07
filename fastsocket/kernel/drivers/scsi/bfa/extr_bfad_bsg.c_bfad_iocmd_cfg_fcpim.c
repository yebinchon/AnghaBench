
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_fcpim_s {int status; int param; } ;


 int BFA_STATUS_OK ;
 int bfa_fcpim_path_tov_set (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_cfg_fcpim(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_fcpim_s *iocmd = (struct bfa_bsg_fcpim_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfa_fcpim_path_tov_set(&bfad->bfa, iocmd->param);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
 return 0;
}
