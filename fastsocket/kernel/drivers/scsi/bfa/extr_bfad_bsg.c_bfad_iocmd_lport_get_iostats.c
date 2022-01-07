
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; int bfa_fcs; } ;
struct bfa_fcs_lport_s {int lp_tag; } ;
struct bfa_bsg_lport_iostats_s {int status; int iostats; int pwwn; int vf_id; } ;


 int BFA_STATUS_OK ;
 int BFA_STATUS_UNKNOWN_LWWN ;
 int bfa_fcpim_port_iostats (int *,int *,int ) ;
 struct bfa_fcs_lport_s* bfa_fcs_lookup_port (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_lport_get_iostats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_fcs_lport_s *fcs_port;
 struct bfa_bsg_lport_iostats_s *iocmd =
   (struct bfa_bsg_lport_iostats_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_port = bfa_fcs_lookup_port(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->pwwn);
 if (fcs_port == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
  goto out;
 }

 bfa_fcpim_port_iostats(&bfad->bfa, &iocmd->iostats,
   fcs_port->lp_tag);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
