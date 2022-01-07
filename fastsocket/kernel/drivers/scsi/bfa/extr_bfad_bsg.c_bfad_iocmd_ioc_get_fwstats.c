
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc; } ;
struct bfad_s {int bfad_lock; TYPE_1__ bfa; } ;
struct bfa_fw_stats_s {int dummy; } ;
struct bfa_bsg_ioc_fwstats_s {scalar_t__ status; } ;


 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ BFA_STATUS_VERSION_FAIL ;
 scalar_t__ bfa_ioc_fw_stats_get (int *,void*) ;
 int bfa_trc (struct bfad_s*,int) ;
 scalar_t__ bfad_chk_iocmd_sz (unsigned int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_ioc_get_fwstats(struct bfad_s *bfad, void *cmd,
   unsigned int payload_len)
{
 struct bfa_bsg_ioc_fwstats_s *iocmd =
   (struct bfa_bsg_ioc_fwstats_s *)cmd;
 void *iocmd_bufptr;
 unsigned long flags;

 if (bfad_chk_iocmd_sz(payload_len,
   sizeof(struct bfa_bsg_ioc_fwstats_s),
   sizeof(struct bfa_fw_stats_s)) != BFA_STATUS_OK) {
  iocmd->status = BFA_STATUS_VERSION_FAIL;
  goto out;
 }

 iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_ioc_fwstats_s);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_ioc_fw_stats_get(&bfad->bfa.ioc, iocmd_bufptr);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (iocmd->status != BFA_STATUS_OK) {
  bfa_trc(bfad, iocmd->status);
  goto out;
 }
out:
 bfa_trc(bfad, 0x6666);
 return 0;
}
