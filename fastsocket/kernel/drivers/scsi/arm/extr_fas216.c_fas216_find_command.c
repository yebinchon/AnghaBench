
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
typedef enum res_find { ____Placeholder_res_find } res_find ;
struct TYPE_7__ {int phase; int disconnectable; } ;
struct TYPE_6__ {int disconnected; int issue; } ;
struct TYPE_9__ {int busyluns; struct scsi_cmnd* origSCpnt; struct scsi_cmnd* SCpnt; TYPE_2__ scsi; TYPE_1__ queues; } ;
struct TYPE_8__ {int id; scalar_t__ lun; } ;
typedef TYPE_4__ FAS216_Info ;



 int clear_bit (scalar_t__,int ) ;
 int printk (char*) ;
 scalar_t__ queue_remove_cmd (int *,struct scsi_cmnd*) ;
 int res_failed ;
 int res_hw_abort ;
 int res_success ;

__attribute__((used)) static enum res_find fas216_find_command(FAS216_Info *info,
      struct scsi_cmnd *SCpnt)
{
 enum res_find res = res_failed;

 if (queue_remove_cmd(&info->queues.issue, SCpnt)) {






  printk("on issue queue ");

  res = res_success;
 } else if (queue_remove_cmd(&info->queues.disconnected, SCpnt)) {





  printk("on disconnected queue ");

  res = res_hw_abort;
 } else if (info->SCpnt == SCpnt) {
  printk("executing ");

  switch (info->scsi.phase) {




  case 128:
   if (info->scsi.disconnectable) {
    info->scsi.disconnectable = 0;
    info->SCpnt = ((void*)0);
    res = res_hw_abort;
   }
   break;

  default:
   break;
  }
 } else if (info->origSCpnt == SCpnt) {






  info->origSCpnt = ((void*)0);
  clear_bit(SCpnt->device->id * 8 + SCpnt->device->lun, info->busyluns);
  printk("waiting for execution ");
  res = res_success;
 } else
  printk("unknown ");

 return res;
}
