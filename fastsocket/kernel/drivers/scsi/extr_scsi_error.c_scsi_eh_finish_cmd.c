
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int eh_entry; scalar_t__ eh_eflags; TYPE_2__* device; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_failed; } ;


 int list_move_tail (int *,struct list_head*) ;

void scsi_eh_finish_cmd(struct scsi_cmnd *scmd, struct list_head *done_q)
{
 scmd->device->host->host_failed--;
 scmd->eh_eflags = 0;
 list_move_tail(&scmd->eh_entry, done_q);
}
