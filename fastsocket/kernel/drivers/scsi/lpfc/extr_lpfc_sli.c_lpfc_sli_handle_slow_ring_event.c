
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_sli_ring {int dummy; } ;
struct lpfc_hba {int (* lpfc_sli_handle_slow_ring_event ) (struct lpfc_hba*,struct lpfc_sli_ring*,int ) ;} ;


 int stub1 (struct lpfc_hba*,struct lpfc_sli_ring*,int ) ;

void
lpfc_sli_handle_slow_ring_event(struct lpfc_hba *phba,
    struct lpfc_sli_ring *pring, uint32_t mask)
{
 phba->lpfc_sli_handle_slow_ring_event(phba, pring, mask);
}
