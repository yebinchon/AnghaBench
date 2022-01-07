
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_eh_save {int prot_op; int underflow; int result; int next_rq; int sdb; int data_direction; int cmnd; int cmd_len; } ;
struct scsi_cmnd {int prot_op; int underflow; int result; TYPE_1__* request; int sdb; int sc_data_direction; int cmnd; int cmd_len; } ;
struct TYPE_2__ {int next_rq; } ;



void scsi_eh_restore_cmnd(struct scsi_cmnd* scmd, struct scsi_eh_save *ses)
{



 scmd->cmd_len = ses->cmd_len;
 scmd->cmnd = ses->cmnd;
 scmd->sc_data_direction = ses->data_direction;
 scmd->sdb = ses->sdb;
 scmd->request->next_rq = ses->next_rq;
 scmd->result = ses->result;
 scmd->underflow = ses->underflow;
 scmd->prot_op = ses->prot_op;
}
