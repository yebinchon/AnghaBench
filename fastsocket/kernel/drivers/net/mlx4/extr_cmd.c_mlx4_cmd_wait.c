
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {size_t next; int result; int out_param; int fw_status; int done; int token; } ;
struct mlx4_cmd {size_t free_head; int event_sem; int context_lock; struct mlx4_cmd_context* context; scalar_t__ token_mask; } ;
struct TYPE_2__ {struct mlx4_cmd cmd; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int down (int *) ;
 int init_completion (int *) ;
 int mlx4_cmd_post (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int) ;
 int mlx4_err (struct mlx4_dev*,char*,int ,int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ) ;
 int msecs_to_jiffies (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int mlx4_cmd_wait(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
    int out_is_imm, u32 in_modifier, u8 op_modifier,
    u16 op, unsigned long timeout)
{
 struct mlx4_cmd *cmd = &mlx4_priv(dev)->cmd;
 struct mlx4_cmd_context *context;
 int err = 0;

 down(&cmd->event_sem);

 spin_lock(&cmd->context_lock);
 BUG_ON(cmd->free_head < 0);
 context = &cmd->context[cmd->free_head];
 context->token += cmd->token_mask + 1;
 cmd->free_head = context->next;
 spin_unlock(&cmd->context_lock);

 init_completion(&context->done);

 mlx4_cmd_post(dev, in_param, out_param ? *out_param : 0,
        in_modifier, op_modifier, op, context->token, 1);

 if (!wait_for_completion_timeout(&context->done,
      msecs_to_jiffies(timeout))) {
  mlx4_warn(dev, "command 0x%x timed out (go bit not cleared)\n",
     op);
  err = -EBUSY;
  goto out;
 }

 err = context->result;
 if (err) {
  mlx4_err(dev, "command 0x%x failed: fw status = 0x%x\n",
    op, context->fw_status);
  goto out;
 }

 if (out_is_imm)
  *out_param = context->out_param;

out:
 spin_lock(&cmd->context_lock);
 context->next = cmd->free_head;
 cmd->free_head = context - cmd->context;
 spin_unlock(&cmd->context_lock);

 up(&cmd->event_sem);
 return err;
}
