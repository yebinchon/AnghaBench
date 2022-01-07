
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {int prot_op; int cmnd; struct request* request; int tag; } ;
struct request {int cmd; int tag; struct scsi_cmnd* special; } ;


 int GFP_ATOMIC ;
 int SCSI_PROT_NORMAL ;
 struct scsi_cmnd* scsi_get_command (struct scsi_device*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct scsi_cmnd *scsi_get_cmd_from_req(struct scsi_device *sdev,
  struct request *req)
{
 struct scsi_cmnd *cmd;

 if (!req->special) {
  cmd = scsi_get_command(sdev, GFP_ATOMIC);
  if (unlikely(!cmd))
   return ((void*)0);
  req->special = cmd;
 } else {
  cmd = req->special;
 }


 cmd->tag = req->tag;
 cmd->request = req;

 cmd->cmnd = req->cmd;
 cmd->prot_op = SCSI_PROT_NORMAL;

 return cmd;
}
