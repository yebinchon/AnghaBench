
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ command; scalar_t__ lbal; } ;
struct TYPE_4__ {TYPE_1__ fis; } ;
struct sas_task {TYPE_2__ ata_task; int task_proto; } ;


 scalar_t__ ATA_CMD_READ_LOG_EXT ;
 scalar_t__ ATA_LOG_SATA_NCQ ;
 scalar_t__ sas_protocol_ata (int ) ;

__attribute__((used)) static inline int isci_task_is_ncq_recovery(struct sas_task *task)
{
 return (sas_protocol_ata(task->task_proto) &&
  task->ata_task.fis.command == ATA_CMD_READ_LOG_EXT &&
  task->ata_task.fis.lbal == ATA_LOG_SATA_NCQ);

}
