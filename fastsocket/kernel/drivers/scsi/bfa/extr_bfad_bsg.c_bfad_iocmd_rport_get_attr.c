
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_fcs_rport_s {int dummy; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_bsg_rport_attr_s {int status; int attr; int rpwwn; scalar_t__ pid; int pwwn; int vf_id; } ;


 int BFA_STATUS_OK ;
 int BFA_STATUS_UNKNOWN_LWWN ;
 int BFA_STATUS_UNKNOWN_RWWN ;
 struct bfa_fcs_lport_s* bfa_fcs_lookup_port (int *,int ,int ) ;
 struct bfa_fcs_rport_s* bfa_fcs_lport_get_rport_by_qualifier (struct bfa_fcs_lport_s*,int ,scalar_t__) ;
 int bfa_fcs_rport_get_attr (struct bfa_fcs_rport_s*,int *) ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_lookup (struct bfa_fcs_lport_s*,int ) ;
 int bfa_trc (struct bfad_s*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_rport_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_rport_attr_s *iocmd = (struct bfa_bsg_rport_attr_s *)cmd;
 struct bfa_fcs_lport_s *fcs_port;
 struct bfa_fcs_rport_s *fcs_rport;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_port = bfa_fcs_lookup_port(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->pwwn);
 if (fcs_port == ((void*)0)) {
  bfa_trc(bfad, 0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
  goto out;
 }

 if (iocmd->pid)
  fcs_rport = bfa_fcs_lport_get_rport_by_qualifier(fcs_port,
      iocmd->rpwwn, iocmd->pid);
 else
  fcs_rport = bfa_fcs_rport_lookup(fcs_port, iocmd->rpwwn);
 if (fcs_rport == ((void*)0)) {
  bfa_trc(bfad, 0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
  goto out;
 }

 bfa_fcs_rport_get_attr(fcs_rport, &iocmd->attr);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
