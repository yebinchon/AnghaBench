
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct lpfc_sglq {int dummy; } ;
struct TYPE_2__ {struct lpfc_sglq** lpfc_sglq_active_list; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;



struct lpfc_sglq *
__lpfc_get_active_sglq(struct lpfc_hba *phba, uint16_t xritag)
{
 struct lpfc_sglq *sglq;

 sglq = phba->sli4_hba.lpfc_sglq_active_list[xritag];
 return sglq;
}
