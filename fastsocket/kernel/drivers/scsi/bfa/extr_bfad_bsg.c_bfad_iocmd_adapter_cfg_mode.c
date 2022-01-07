
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ablk; } ;
struct TYPE_5__ {TYPE_1__ modules; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct TYPE_6__ {int max_vf; int max_pf; int mode; } ;
struct bfa_bsg_adapter_cfg_mode_s {scalar_t__ status; TYPE_3__ cfg; } ;


 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ bfa_ablk_adapter_config (int *,int ,int ,int ,int ,struct bfad_hal_comp*) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_adapter_cfg_mode(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_adapter_cfg_mode_s *iocmd =
   (struct bfa_bsg_adapter_cfg_mode_s *)cmd;
 struct bfad_hal_comp fcomp;
 unsigned long flags = 0;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_ablk_adapter_config(&bfad->bfa.modules.ablk,
    iocmd->cfg.mode, iocmd->cfg.max_pf,
    iocmd->cfg.max_vf, bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK)
  goto out;

 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
