
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; } ;
struct TYPE_2__ {struct scsi_cmnd* head; } ;
struct aic7xxx_host {TYPE_1__ completeq; } ;


 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void aic7xxx_done_cmds_complete(struct aic7xxx_host *p)
{
 struct scsi_cmnd *cmd;

 while (p->completeq.head != ((void*)0)) {
  cmd = p->completeq.head;
  p->completeq.head = (struct scsi_cmnd *) cmd->host_scribble;
  cmd->host_scribble = ((void*)0);
  cmd->scsi_done(cmd);
 }
}
