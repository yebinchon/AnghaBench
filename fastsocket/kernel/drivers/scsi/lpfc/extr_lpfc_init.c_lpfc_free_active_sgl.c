
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lpfc_sglq_active_list; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;


 int kfree (int ) ;

__attribute__((used)) static void
lpfc_free_active_sgl(struct lpfc_hba *phba)
{
 kfree(phba->sli4_hba.lpfc_sglq_active_list);
}
