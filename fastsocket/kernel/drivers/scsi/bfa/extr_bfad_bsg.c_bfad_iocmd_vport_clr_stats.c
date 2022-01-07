
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_vport_stats_s {int dummy; } ;
struct bfa_lport_stats_s {int dummy; } ;
struct TYPE_2__ {int stats; } ;
struct bfa_fcs_vport_s {TYPE_1__ lport; int vport_stats; } ;
struct bfa_bsg_reset_stats_s {int status; int vpwwn; int vf_id; } ;


 int BFA_STATUS_OK ;
 int BFA_STATUS_UNKNOWN_VWWN ;
 struct bfa_fcs_vport_s* bfa_fcs_vport_lookup (int *,int ,int ) ;
 int memset (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_vport_clr_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_fcs_vport_s *fcs_vport;
 struct bfa_bsg_reset_stats_s *iocmd =
    (struct bfa_bsg_reset_stats_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_vport = bfa_fcs_vport_lookup(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->vpwwn);
 if (fcs_vport == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_VWWN;
  goto out;
 }

 memset(&fcs_vport->vport_stats, 0, sizeof(struct bfa_vport_stats_s));
 memset(&fcs_vport->lport.stats, 0, sizeof(struct bfa_lport_stats_s));
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
