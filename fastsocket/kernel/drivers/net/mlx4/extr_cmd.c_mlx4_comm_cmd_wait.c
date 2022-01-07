
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {size_t next; int result; scalar_t__ fw_status; int done; int token; } ;
struct mlx4_cmd {size_t free_head; int event_sem; int context_lock; struct mlx4_cmd_context* context; scalar_t__ token_mask; } ;
struct TYPE_2__ {struct mlx4_cmd cmd; } ;


 int BUG_ON (int) ;
 scalar_t__ CMD_STAT_MULTI_FUNC_REQ ;
 int EBUSY ;
 scalar_t__ comm_pending (struct mlx4_dev*) ;
 int cond_resched () ;
 int down (int *) ;
 int init_completion (int *) ;
 unsigned long jiffies ;
 int mlx4_comm_cmd_post (struct mlx4_dev*,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*,int ,scalar_t__) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int up (int *) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int mlx4_comm_cmd_wait(struct mlx4_dev *dev, u8 op,
         u16 param, unsigned long timeout)
{
 struct mlx4_cmd *cmd = &mlx4_priv(dev)->cmd;
 struct mlx4_cmd_context *context;
 unsigned long end;
 int err = 0;

 down(&cmd->event_sem);

 spin_lock(&cmd->context_lock);
 BUG_ON(cmd->free_head < 0);
 context = &cmd->context[cmd->free_head];
 context->token += cmd->token_mask + 1;
 cmd->free_head = context->next;
 spin_unlock(&cmd->context_lock);

 init_completion(&context->done);

 mlx4_comm_cmd_post(dev, op, param);

 if (!wait_for_completion_timeout(&context->done,
      msecs_to_jiffies(timeout))) {
  mlx4_warn(dev, "communication channel command 0x%x timed out\n",
     op);
  err = -EBUSY;
  goto out;
 }

 err = context->result;
 if (err && context->fw_status != CMD_STAT_MULTI_FUNC_REQ) {
  mlx4_err(dev, "command 0x%x failed: fw status = 0x%x\n",
    op, context->fw_status);
  goto out;
 }

out:




 end = msecs_to_jiffies(timeout) + jiffies;
 while (comm_pending(dev) && time_before(jiffies, end))
  cond_resched();

 spin_lock(&cmd->context_lock);
 context->next = cmd->free_head;
 cmd->free_head = context - cmd->context;
 spin_unlock(&cmd->context_lock);

 up(&cmd->event_sem);
 return err;
}
