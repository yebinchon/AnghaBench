
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {int int_cmd_wait_q; TYPE_1__* instancet; } ;
struct megasas_cmd {scalar_t__ cmd_status; } ;
struct TYPE_2__ {int (* issue_dcmd ) (struct megasas_instance*,struct megasas_cmd*) ;} ;


 scalar_t__ ENODATA ;
 int stub1 (struct megasas_instance*,struct megasas_cmd*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
megasas_issue_blocked_cmd(struct megasas_instance *instance,
     struct megasas_cmd *cmd)
{
 cmd->cmd_status = ENODATA;

 instance->instancet->issue_dcmd(instance, cmd);

 wait_event(instance->int_cmd_wait_q, cmd->cmd_status != ENODATA);

 return 0;
}
