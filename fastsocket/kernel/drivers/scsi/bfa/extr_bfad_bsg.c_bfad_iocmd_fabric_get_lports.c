
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef scalar_t__ uint32_t ;
struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_bsg_fabric_get_lports_s {scalar_t__ nports; scalar_t__ status; int vf_id; } ;
typedef int bfa_fcs_vf_t ;


 scalar_t__ BFA_STATUS_EINVAL ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ BFA_STATUS_UNKNOWN_VFID ;
 scalar_t__ BFA_STATUS_VERSION_FAIL ;
 int bfa_fcs_vf_get_ports (int *,int *,scalar_t__*) ;
 int * bfa_fcs_vf_lookup (int *,int ) ;
 scalar_t__ bfad_chk_iocmd_sz (unsigned int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bfad_iocmd_fabric_get_lports(struct bfad_s *bfad, void *cmd,
   unsigned int payload_len)
{
 struct bfa_bsg_fabric_get_lports_s *iocmd =
   (struct bfa_bsg_fabric_get_lports_s *)cmd;
 bfa_fcs_vf_t *fcs_vf;
 uint32_t nports = iocmd->nports;
 unsigned long flags;
 void *iocmd_bufptr;

 if (nports == 0) {
  iocmd->status = BFA_STATUS_EINVAL;
  goto out;
 }

 if (bfad_chk_iocmd_sz(payload_len,
  sizeof(struct bfa_bsg_fabric_get_lports_s),
  sizeof(wwn_t[iocmd->nports])) != BFA_STATUS_OK) {
  iocmd->status = BFA_STATUS_VERSION_FAIL;
  goto out;
 }

 iocmd_bufptr = (char *)iocmd +
   sizeof(struct bfa_bsg_fabric_get_lports_s);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_vf = bfa_fcs_vf_lookup(&bfad->bfa_fcs, iocmd->vf_id);
 if (fcs_vf == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_VFID;
  goto out;
 }
 bfa_fcs_vf_get_ports(fcs_vf, (wwn_t *)iocmd_bufptr, &nports);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 iocmd->nports = nports;
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
