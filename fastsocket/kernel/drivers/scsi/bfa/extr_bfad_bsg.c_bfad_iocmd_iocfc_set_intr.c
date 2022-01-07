
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_iocfc_intr_s {int attr; int status; } ;


 int bfa_iocfc_israttr_set (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_iocfc_set_intr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_iocfc_intr_s *iocmd = (struct bfa_bsg_iocfc_intr_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_iocfc_israttr_set(&bfad->bfa, &iocmd->attr);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
