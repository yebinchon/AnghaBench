
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sas_task {struct ata_queued_cmd* uldd_task; } ;
struct TYPE_2__ {scalar_t__ command; } ;
struct ata_queued_cmd {int tag; TYPE_1__ tf; } ;


 scalar_t__ ATA_CMD_FPDMA_READ ;
 scalar_t__ ATA_CMD_FPDMA_WRITE ;

u32 pm8001_get_ncq_tag(struct sas_task *task, u32 *tag)
{
 struct ata_queued_cmd *qc = task->uldd_task;
 if (qc) {
  if (qc->tf.command == ATA_CMD_FPDMA_WRITE ||
   qc->tf.command == ATA_CMD_FPDMA_READ) {
   *tag = qc->tag;
   return 1;
  }
 }
 return 0;
}
