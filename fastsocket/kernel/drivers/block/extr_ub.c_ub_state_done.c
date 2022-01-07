
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {int error; int (* done ) (struct ub_dev*,struct ub_scsi_cmd*) ;int state; } ;
struct ub_dev {int dummy; } ;


 int UB_CMDST_DONE ;
 int stub1 (struct ub_dev*,struct ub_scsi_cmd*) ;
 int ub_cmdq_pop (struct ub_dev*) ;

__attribute__((used)) static void ub_state_done(struct ub_dev *sc, struct ub_scsi_cmd *cmd, int rc)
{

 cmd->error = rc;
 cmd->state = UB_CMDST_DONE;
 ub_cmdq_pop(sc);
 (*cmd->done)(sc, cmd);
}
