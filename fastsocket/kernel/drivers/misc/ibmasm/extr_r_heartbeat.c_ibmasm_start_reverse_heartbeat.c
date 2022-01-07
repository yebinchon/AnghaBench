
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int dummy; } ;
struct reverse_heartbeat {scalar_t__ stopped; int wait; } ;
struct command {scalar_t__ status; int buffer; } ;


 int EINTR ;
 int ENOMEM ;
 int HZ ;
 scalar_t__ IBMASM_CMD_COMPLETE ;
 scalar_t__ IBMASM_CMD_PENDING ;
 int IBMASM_CMD_TIMEOUT_NORMAL ;
 int REVERSE_HEARTBEAT_TIMEOUT ;
 int command_put (struct command*) ;
 int current ;
 int ibmasm_exec_command (struct service_processor*,struct command*) ;
 struct command* ibmasm_new_command (struct service_processor*,int) ;
 int ibmasm_wait_for_response (struct command*,int ) ;
 int memcpy (int ,void*,int) ;
 int rhb_dot_cmd ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int) ;

int ibmasm_start_reverse_heartbeat(struct service_processor *sp, struct reverse_heartbeat *rhb)
{
 struct command *cmd;
 int times_failed = 0;
 int result = 1;

 cmd = ibmasm_new_command(sp, sizeof rhb_dot_cmd);
 if (!cmd)
  return -ENOMEM;

 while (times_failed < 3) {
  memcpy(cmd->buffer, (void *)&rhb_dot_cmd, sizeof rhb_dot_cmd);
  cmd->status = IBMASM_CMD_PENDING;
  ibmasm_exec_command(sp, cmd);
  ibmasm_wait_for_response(cmd, IBMASM_CMD_TIMEOUT_NORMAL);

  if (cmd->status != IBMASM_CMD_COMPLETE)
   times_failed++;

  wait_event_interruptible_timeout(rhb->wait,
   rhb->stopped,
   REVERSE_HEARTBEAT_TIMEOUT * HZ);

  if (signal_pending(current) || rhb->stopped) {
   result = -EINTR;
   break;
  }
 }
 command_put(cmd);
 rhb->stopped = 0;

 return result;
}
