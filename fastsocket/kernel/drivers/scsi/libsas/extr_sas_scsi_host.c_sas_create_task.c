
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_lun {int scsi_lun; } ;
struct scsi_cmnd {int sc_data_direction; int * cmnd; TYPE_1__* device; } ;
struct TYPE_4__ {int retry_count; int cdb; int task_attr; int LUN; } ;
struct sas_task {int task_done; int data_dir; int total_xfer_len; int num_scatter; int scatter; TYPE_2__ ssp_task; struct domain_device* dev; int task_proto; struct scsi_cmnd* uldd_task; } ;
struct domain_device {int tproto; } ;
typedef int gfp_t ;
struct TYPE_3__ {int lun; } ;


 int ASSIGN_SAS_TASK (struct scsi_cmnd*,struct sas_task*) ;
 int TASK_ATTR_SIMPLE ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int memcpy (int ,int *,int) ;
 struct sas_task* sas_alloc_task (int ) ;
 int sas_scsi_task_done ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static struct sas_task *sas_create_task(struct scsi_cmnd *cmd,
            struct domain_device *dev,
            gfp_t gfp_flags)
{
 struct sas_task *task = sas_alloc_task(gfp_flags);
 struct scsi_lun lun;

 if (!task)
  return ((void*)0);

 task->uldd_task = cmd;
 ASSIGN_SAS_TASK(cmd, task);

 task->dev = dev;
 task->task_proto = task->dev->tproto;

 task->ssp_task.retry_count = 1;
 int_to_scsilun(cmd->device->lun, &lun);
 memcpy(task->ssp_task.LUN, &lun.scsi_lun, 8);
 task->ssp_task.task_attr = TASK_ATTR_SIMPLE;
 memcpy(task->ssp_task.cdb, cmd->cmnd, 16);

 task->scatter = scsi_sglist(cmd);
 task->num_scatter = scsi_sg_count(cmd);
 task->total_xfer_len = scsi_bufflen(cmd);
 task->data_dir = cmd->sc_data_direction;

 task->task_done = sas_scsi_task_done;

 return task;
}
