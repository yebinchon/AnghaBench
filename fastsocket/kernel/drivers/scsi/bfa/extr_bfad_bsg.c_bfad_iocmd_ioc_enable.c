
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc; } ;
struct bfad_s {int enable_comp; int bfad_lock; TYPE_1__ bfa; } ;
struct bfa_bsg_gen_s {void* status; } ;


 void* BFA_STATUS_OK ;
 int bfa_ioc_is_disabled (int *) ;
 int bfa_iocfc_enable (TYPE_1__*) ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_ioc_enable(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
 int rc = 0;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);

 if (!bfa_ioc_is_disabled(&bfad->bfa.ioc)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_OK;
  return rc;
 }

 init_completion(&bfad->enable_comp);
 bfa_iocfc_enable(&bfad->bfa);
 iocmd->status = BFA_STATUS_OK;
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 wait_for_completion(&bfad->enable_comp);

 return rc;
}
