
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {int hbalock; TYPE_1__ sli; } ;


 int LPFC_BLOCK_MGMT_IO ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_unblock_mgmt_io(struct lpfc_hba * phba)
{
 unsigned long iflag;

 spin_lock_irqsave(&phba->hbalock, iflag);
 phba->sli.sli_flag &= ~LPFC_BLOCK_MGMT_IO;
 spin_unlock_irqrestore(&phba->hbalock, iflag);
}
