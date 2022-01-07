
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {int int_cmd_wait_q; } ;
struct megasas_cmd {scalar_t__ cmd_status; TYPE_2__* frame; } ;
struct TYPE_3__ {scalar_t__ cmd_status; } ;
struct TYPE_4__ {TYPE_1__ io; } ;


 scalar_t__ ENODATA ;
 int wake_up (int *) ;

__attribute__((used)) static void
megasas_complete_int_cmd(struct megasas_instance *instance,
    struct megasas_cmd *cmd)
{
 cmd->cmd_status = cmd->frame->io.cmd_status;

 if (cmd->cmd_status == ENODATA) {
  cmd->cmd_status = 0;
 }
 wake_up(&instance->int_cmd_wait_q);
}
