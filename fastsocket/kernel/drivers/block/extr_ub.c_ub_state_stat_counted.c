
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {int stat_count; int state; } ;
struct ub_dev {int dummy; } ;


 int UB_CMDST_STAT ;
 scalar_t__ __ub_state_stat (struct ub_dev*,struct ub_scsi_cmd*) ;
 int ub_state_sense (struct ub_dev*,struct ub_scsi_cmd*) ;

__attribute__((used)) static void ub_state_stat_counted(struct ub_dev *sc, struct ub_scsi_cmd *cmd)
{

 if (++cmd->stat_count >= 4) {
  ub_state_sense(sc, cmd);
  return;
 }

 if (__ub_state_stat(sc, cmd) != 0)
  return;

 cmd->state = UB_CMDST_STAT;
}
