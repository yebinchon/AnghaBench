
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lpfc_hba {scalar_t__ sli_rev; } ;
struct TYPE_2__ {int init_count; int entry_count; } ;


 scalar_t__ LPFC_SLI_REV4 ;
 TYPE_1__** lpfc_hbq_defs ;
 int lpfc_sli_hbqbuf_fill_hbqs (struct lpfc_hba*,size_t,int ) ;

__attribute__((used)) static int
lpfc_sli_hbqbuf_init_hbqs(struct lpfc_hba *phba, uint32_t qno)
{
 if (phba->sli_rev == LPFC_SLI_REV4)
  return lpfc_sli_hbqbuf_fill_hbqs(phba, qno,
     lpfc_hbq_defs[qno]->entry_count);
 else
  return lpfc_sli_hbqbuf_fill_hbqs(phba, qno,
      lpfc_hbq_defs[qno]->init_count);
}
