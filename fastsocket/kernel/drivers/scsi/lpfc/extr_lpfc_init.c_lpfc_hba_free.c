
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct lpfc_hba* ring; } ;
struct lpfc_hba {TYPE_1__ sli; int brd_no; } ;


 int idr_remove (int *,int ) ;
 int kfree (struct lpfc_hba*) ;
 int lpfc_hba_index ;

__attribute__((used)) static void
lpfc_hba_free(struct lpfc_hba *phba)
{

 idr_remove(&lpfc_hba_index, phba->brd_no);


 kfree(phba->sli.ring);
 phba->sli.ring = ((void*)0);

 kfree(phba);
 return;
}
