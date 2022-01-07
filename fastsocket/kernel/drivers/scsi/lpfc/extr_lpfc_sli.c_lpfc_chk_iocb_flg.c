
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_iocbq {int iocb_flag; } ;
struct lpfc_hba {int hbalock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
lpfc_chk_iocb_flg(struct lpfc_hba *phba,
   struct lpfc_iocbq *piocbq, uint32_t flag)
{
 unsigned long iflags;
 int ret;

 spin_lock_irqsave(&phba->hbalock, iflags);
 ret = piocbq->iocb_flag & flag;
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 return ret;

}
