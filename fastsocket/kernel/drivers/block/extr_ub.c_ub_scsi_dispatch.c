
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {scalar_t__ state; int error; int (* done ) (struct ub_dev*,struct ub_scsi_cmd*) ;} ;
struct ub_dev {int work_timer; int work_done; int reset; } ;


 scalar_t__ UB_CMDST_DONE ;
 scalar_t__ UB_CMDST_INIT ;
 int del_timer (int *) ;
 int stub1 (struct ub_dev*,struct ub_scsi_cmd*) ;
 struct ub_scsi_cmd* ub_cmdq_peek (struct ub_dev*) ;
 int ub_cmdq_pop (struct ub_dev*) ;
 int ub_is_completed (int *) ;
 int ub_scsi_cmd_start (struct ub_dev*,struct ub_scsi_cmd*) ;
 int ub_scsi_urb_compl (struct ub_dev*,struct ub_scsi_cmd*) ;

__attribute__((used)) static void ub_scsi_dispatch(struct ub_dev *sc)
{
 struct ub_scsi_cmd *cmd;
 int rc;

 while (!sc->reset && (cmd = ub_cmdq_peek(sc)) != ((void*)0)) {
  if (cmd->state == UB_CMDST_DONE) {
   ub_cmdq_pop(sc);
   (*cmd->done)(sc, cmd);
  } else if (cmd->state == UB_CMDST_INIT) {
   if ((rc = ub_scsi_cmd_start(sc, cmd)) == 0)
    break;
   cmd->error = rc;
   cmd->state = UB_CMDST_DONE;
  } else {
   if (!ub_is_completed(&sc->work_done))
    break;
   del_timer(&sc->work_timer);
   ub_scsi_urb_compl(sc, cmd);
  }
 }
}
