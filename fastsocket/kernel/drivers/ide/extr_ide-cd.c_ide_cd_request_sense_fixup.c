
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {scalar_t__* cmd; } ;
struct ide_cmd {int nleft; struct request* rq; } ;
typedef int ide_drive_t ;


 scalar_t__ GPCMD_REQUEST_SENSE ;
 int IDE_DBG_FUNC ;
 int ide_debug_log (int ,char*,scalar_t__) ;

__attribute__((used)) static void ide_cd_request_sense_fixup(ide_drive_t *drive, struct ide_cmd *cmd)
{
 struct request *rq = cmd->rq;

 ide_debug_log(IDE_DBG_FUNC, "rq->cmd[0]: 0x%x", rq->cmd[0]);





 if (rq->cmd[0] == GPCMD_REQUEST_SENSE &&
     cmd->nleft > 0 && cmd->nleft <= 5)
  cmd->nleft = 0;
}
