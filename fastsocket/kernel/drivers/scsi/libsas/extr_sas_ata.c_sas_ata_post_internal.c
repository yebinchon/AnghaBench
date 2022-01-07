
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int * uldd_task; } ;
struct ata_queued_cmd {int flags; int err_mask; struct sas_task* lldd_task; } ;


 int AC_ERR_OTHER ;
 int ATA_QCFLAG_FAILED ;
 int sas_ata_internal_abort (struct sas_task*) ;

__attribute__((used)) static void sas_ata_post_internal(struct ata_queued_cmd *qc)
{
 if (qc->flags & ATA_QCFLAG_FAILED)
  qc->err_mask |= AC_ERR_OTHER;

 if (qc->err_mask) {
  struct sas_task *task = qc->lldd_task;

  qc->lldd_task = ((void*)0);
  if (!task)
   return;
  task->uldd_task = ((void*)0);
  sas_ata_internal_abort(task);
 }
}
