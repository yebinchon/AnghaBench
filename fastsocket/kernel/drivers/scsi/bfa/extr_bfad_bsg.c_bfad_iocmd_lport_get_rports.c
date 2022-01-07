
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_rport_qualifier_s {int dummy; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_bsg_lport_get_rports_s {int nrports; scalar_t__ status; int pwwn; int vf_id; } ;


 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ BFA_STATUS_UNKNOWN_LWWN ;
 scalar_t__ BFA_STATUS_VERSION_FAIL ;
 int EINVAL ;
 struct bfa_fcs_lport_s* bfa_fcs_lookup_port (int *,int ,int ) ;
 int bfa_fcs_lport_get_rport_quals (struct bfa_fcs_lport_s*,struct bfa_rport_qualifier_s*,int*) ;
 int bfa_trc (struct bfad_s*,int ) ;
 scalar_t__ bfad_chk_iocmd_sz (unsigned int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_lport_get_rports(struct bfad_s *bfad, void *cmd,
   unsigned int payload_len)
{
 struct bfa_bsg_lport_get_rports_s *iocmd =
   (struct bfa_bsg_lport_get_rports_s *)cmd;
 struct bfa_fcs_lport_s *fcs_port;
 unsigned long flags;
 void *iocmd_bufptr;

 if (iocmd->nrports == 0)
  return -EINVAL;

 if (bfad_chk_iocmd_sz(payload_len,
   sizeof(struct bfa_bsg_lport_get_rports_s),
   sizeof(struct bfa_rport_qualifier_s) * iocmd->nrports)
   != BFA_STATUS_OK) {
  iocmd->status = BFA_STATUS_VERSION_FAIL;
  return 0;
 }

 iocmd_bufptr = (char *)iocmd +
   sizeof(struct bfa_bsg_lport_get_rports_s);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_port = bfa_fcs_lookup_port(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->pwwn);
 if (fcs_port == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  bfa_trc(bfad, 0);
  iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
  goto out;
 }

 bfa_fcs_lport_get_rport_quals(fcs_port,
   (struct bfa_rport_qualifier_s *)iocmd_bufptr,
   &iocmd->nrports);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
