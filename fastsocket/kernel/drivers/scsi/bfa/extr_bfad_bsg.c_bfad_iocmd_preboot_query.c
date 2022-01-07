
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int blun; int port_speed; int nbluns; int boot_enabled; } ;
struct bfi_iocfc_cfgrsp_s {TYPE_3__ pbc_cfg; } ;
struct TYPE_4__ {struct bfi_iocfc_cfgrsp_s* cfgrsp; } ;
struct TYPE_5__ {TYPE_1__ iocfc; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfa_boot_pbc_s {int pblun; int speed; int nbluns; int enable; } ;
struct bfa_bsg_preboot_s {int status; struct bfa_boot_pbc_s cfg; } ;


 int BFA_STATUS_OK ;
 int memcpy (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_preboot_query(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_preboot_s *iocmd = (struct bfa_bsg_preboot_s *)cmd;
 struct bfi_iocfc_cfgrsp_s *cfgrsp = bfad->bfa.iocfc.cfgrsp;
 struct bfa_boot_pbc_s *pbcfg = &iocmd->cfg;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 pbcfg->enable = cfgrsp->pbc_cfg.boot_enabled;
 pbcfg->nbluns = cfgrsp->pbc_cfg.nbluns;
 pbcfg->speed = cfgrsp->pbc_cfg.port_speed;
 memcpy(pbcfg->pblun, cfgrsp->pbc_cfg.blun, sizeof(pbcfg->pblun));
 iocmd->status = BFA_STATUS_OK;
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
