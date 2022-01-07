
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {scalar_t__ state; scalar_t__ dir; scalar_t__ len; } ;
struct ub_dev {int tasklet; } ;


 int EINVAL ;
 scalar_t__ UB_CMDST_INIT ;
 scalar_t__ UB_DIR_NONE ;
 int tasklet_schedule (int *) ;
 int ub_cmdq_add (struct ub_dev*,struct ub_scsi_cmd*) ;

__attribute__((used)) static int ub_submit_scsi(struct ub_dev *sc, struct ub_scsi_cmd *cmd)
{

 if (cmd->state != UB_CMDST_INIT ||
     (cmd->dir != UB_DIR_NONE && cmd->len == 0)) {
  return -EINVAL;
 }

 ub_cmdq_add(sc, cmd);




 tasklet_schedule(&sc->tasklet);
 return 0;
}
