
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_queue {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_eqe {int dummy; } ;


 int LPFC_QUEUE_REARM ;
 struct lpfc_eqe* lpfc_sli4_eq_get (struct lpfc_queue*) ;
 int lpfc_sli4_eq_release (struct lpfc_queue*,int ) ;

__attribute__((used)) static void
lpfc_sli4_eq_flush(struct lpfc_hba *phba, struct lpfc_queue *eq)
{
 struct lpfc_eqe *eqe;


 while ((eqe = lpfc_sli4_eq_get(eq)))
  ;


 lpfc_sli4_eq_release(eq, LPFC_QUEUE_REARM);
}
