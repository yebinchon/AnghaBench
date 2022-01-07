
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_hba {int hbq_in_use; int hbq_count; TYPE_1__* hbqs; } ;
struct TYPE_4__ {int entry_count; } ;
struct TYPE_3__ {int entry_count; } ;


 TYPE_2__** lpfc_hbq_defs ;
 int lpfc_sli_hbqbuf_init_hbqs (struct lpfc_hba*,int ) ;

__attribute__((used)) static int
lpfc_sli4_rb_setup(struct lpfc_hba *phba)
{
 phba->hbq_in_use = 1;
 phba->hbqs[0].entry_count = lpfc_hbq_defs[0]->entry_count;
 phba->hbq_count = 1;

 lpfc_sli_hbqbuf_init_hbqs(phba, 0);
 return 0;
}
