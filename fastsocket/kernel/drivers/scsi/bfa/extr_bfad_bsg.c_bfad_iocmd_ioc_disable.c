
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc; } ;
struct bfad_s {scalar_t__ disable_active; int disable_comp; int bfad_lock; TYPE_1__ bfa; } ;
struct bfa_bsg_gen_s {void* status; } ;


 scalar_t__ BFA_FALSE ;
 void* BFA_STATUS_OK ;
 scalar_t__ BFA_TRUE ;
 int EBUSY ;
 scalar_t__ bfa_ioc_is_disabled (int *) ;
 int bfa_iocfc_disable (TYPE_1__*) ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_ioc_disable(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
 int rc = 0;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (bfa_ioc_is_disabled(&bfad->bfa.ioc)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_OK;
  return rc;
 }

 if (bfad->disable_active) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  return -EBUSY;
 }

 bfad->disable_active = BFA_TRUE;
 init_completion(&bfad->disable_comp);
 bfa_iocfc_disable(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 wait_for_completion(&bfad->disable_comp);
 bfad->disable_active = BFA_FALSE;
 iocmd->status = BFA_STATUS_OK;

 return rc;
}
