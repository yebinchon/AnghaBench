
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct carl9170_psm {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct carl9170_cmd {TYPE_1__ psm; } ;
struct ar9170 {int dummy; } ;


 int CARL9170_CMD_PSM_ASYNC ;
 int CARL9170_PSM_SLEEP ;
 int ENOMEM ;
 int __carl9170_exec_cmd (struct ar9170*,struct carl9170_cmd*,int) ;
 struct carl9170_cmd* carl9170_cmd_buf (struct ar9170*,int ,int) ;
 int cpu_to_le32 (int) ;

int carl9170_powersave(struct ar9170 *ar, const bool ps)
{
 struct carl9170_cmd *cmd;
 u32 state;

 cmd = carl9170_cmd_buf(ar, CARL9170_CMD_PSM_ASYNC,
          sizeof(struct carl9170_psm));
 if (!cmd)
  return -ENOMEM;

 if (ps) {

  state = CARL9170_PSM_SLEEP | 1;
 } else {

  state = 1;
 }

 cmd->psm.state = cpu_to_le32(state);
 return __carl9170_exec_cmd(ar, cmd, 1);
}
