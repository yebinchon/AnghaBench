
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd_queue {scalar_t__ qlen; struct ub_scsi_cmd* head; int * tail; } ;
struct ub_scsi_cmd {struct ub_scsi_cmd* next; } ;
struct ub_dev {struct ub_scsi_cmd_queue cmd_queue; } ;



__attribute__((used)) static struct ub_scsi_cmd *ub_cmdq_pop(struct ub_dev *sc)
{
 struct ub_scsi_cmd_queue *t = &sc->cmd_queue;
 struct ub_scsi_cmd *cmd;

 if (t->qlen == 0)
  return ((void*)0);
 if (--t->qlen == 0)
  t->tail = ((void*)0);
 cmd = t->head;
 t->head = cmd->next;
 cmd->next = ((void*)0);
 return cmd;
}
