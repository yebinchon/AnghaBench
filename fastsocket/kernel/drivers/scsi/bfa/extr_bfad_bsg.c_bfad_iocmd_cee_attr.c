
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cee; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {int comp; scalar_t__ status; } ;
struct bfa_cee_attr_s {int dummy; } ;
struct bfa_bsg_cee_attr_s {scalar_t__ status; } ;


 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ BFA_STATUS_VERSION_FAIL ;
 scalar_t__ bfa_cee_get_attr (int *,void*,int ,struct bfad_hal_comp*) ;
 int bfa_trc (struct bfad_s*,int) ;
 scalar_t__ bfad_chk_iocmd_sz (unsigned int,int,int) ;
 int bfad_hcb_comp ;
 int bfad_mutex ;
 int init_completion (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_cee_attr(struct bfad_s *bfad, void *cmd, unsigned int payload_len)
{
 struct bfa_bsg_cee_attr_s *iocmd =
    (struct bfa_bsg_cee_attr_s *)cmd;
 void *iocmd_bufptr;
 struct bfad_hal_comp cee_comp;
 unsigned long flags;

 if (bfad_chk_iocmd_sz(payload_len,
   sizeof(struct bfa_bsg_cee_attr_s),
   sizeof(struct bfa_cee_attr_s)) != BFA_STATUS_OK) {
  iocmd->status = BFA_STATUS_VERSION_FAIL;
  return 0;
 }

 iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_cee_attr_s);

 cee_comp.status = 0;
 init_completion(&cee_comp.comp);
 mutex_lock(&bfad_mutex);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_cee_get_attr(&bfad->bfa.modules.cee, iocmd_bufptr,
      bfad_hcb_comp, &cee_comp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK) {
  mutex_unlock(&bfad_mutex);
  bfa_trc(bfad, 0x5555);
  goto out;
 }
 wait_for_completion(&cee_comp.comp);
 mutex_unlock(&bfad_mutex);
out:
 return 0;
}
