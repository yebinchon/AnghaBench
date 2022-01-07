
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_vf_stats_s {int dummy; } ;
struct bfa_fcs_fabric_s {int stats; } ;
struct bfa_bsg_vf_reset_stats_s {int status; int vf_id; } ;


 int BFA_STATUS_OK ;
 int BFA_STATUS_UNKNOWN_VFID ;
 struct bfa_fcs_fabric_s* bfa_fcs_vf_lookup (int *,int ) ;
 int memset (void*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_vf_clr_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_vf_reset_stats_s *iocmd =
   (struct bfa_bsg_vf_reset_stats_s *)cmd;
 struct bfa_fcs_fabric_s *fcs_vf;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_vf = bfa_fcs_vf_lookup(&bfad->bfa_fcs, iocmd->vf_id);
 if (fcs_vf == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_VFID;
  goto out;
 }
 memset((void *)&fcs_vf->stats, 0, sizeof(struct bfa_vf_stats_s));
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
