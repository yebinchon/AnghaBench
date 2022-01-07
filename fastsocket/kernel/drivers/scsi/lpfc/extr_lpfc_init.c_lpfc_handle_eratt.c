
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int (* lpfc_handle_eratt ) (struct lpfc_hba*) ;} ;


 int stub1 (struct lpfc_hba*) ;

void
lpfc_handle_eratt(struct lpfc_hba *phba)
{
 (*phba->lpfc_handle_eratt)(phba);
}
