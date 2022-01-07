
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct request {struct scsi_cmnd* special; } ;


 int blk_unprep_request (struct request*) ;
 int scsi_put_command (struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_unprep_request(struct request *req)
{
 struct scsi_cmnd *cmd = req->special;

 blk_unprep_request(req);
 req->special = ((void*)0);

 scsi_put_command(cmd);
}
