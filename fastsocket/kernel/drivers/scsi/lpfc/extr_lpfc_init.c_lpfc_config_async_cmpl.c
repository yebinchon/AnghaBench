
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_hba {int temp_sensor_support; int mbox_mem_pool; } ;
struct TYPE_6__ {scalar_t__ mbxStatus; } ;
struct TYPE_7__ {TYPE_1__ mb; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 scalar_t__ MBX_SUCCESS ;
 int mempool_free (TYPE_3__*,int ) ;

__attribute__((used)) static void
lpfc_config_async_cmpl(struct lpfc_hba * phba, LPFC_MBOXQ_t * pmboxq)
{
 if (pmboxq->u.mb.mbxStatus == MBX_SUCCESS)
  phba->temp_sensor_support = 1;
 else
  phba->temp_sensor_support = 0;
 mempool_free(pmboxq, phba->mbox_mem_pool);
 return;
}
