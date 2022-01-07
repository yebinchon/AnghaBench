
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct prog_id {int dist; scalar_t__ num; int ver; int rev; int lev; } ;
struct lpfc_hba {int mbox_mem_pool; int OptionROMVersion; } ;
struct TYPE_7__ {scalar_t__* varWords; } ;
struct TYPE_8__ {scalar_t__ mbxStatus; TYPE_1__ un; } ;
struct TYPE_9__ {TYPE_2__ mb; } ;
struct TYPE_10__ {TYPE_3__ u; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 scalar_t__ MBX_SUCCESS ;
 int mempool_free (TYPE_4__*,int ) ;
 int sprintf (int ,char*,int,int,int,...) ;

__attribute__((used)) static void
lpfc_dump_wakeup_param_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
 struct prog_id *prg;
 uint32_t prog_id_word;
 char dist = ' ';

 char dist_char[] = "nabx";

 if (pmboxq->u.mb.mbxStatus != MBX_SUCCESS) {
  mempool_free(pmboxq, phba->mbox_mem_pool);
  return;
 }

 prg = (struct prog_id *) &prog_id_word;


 prog_id_word = pmboxq->u.mb.un.varWords[7];


 if (prg->dist < 4)
  dist = dist_char[prg->dist];

 if ((prg->dist == 3) && (prg->num == 0))
  sprintf(phba->OptionROMVersion, "%d.%d%d",
   prg->ver, prg->rev, prg->lev);
 else
  sprintf(phba->OptionROMVersion, "%d.%d%d%c%d",
   prg->ver, prg->rev, prg->lev,
   dist, prg->num);
 mempool_free(pmboxq, phba->mbox_mem_pool);
 return;
}
