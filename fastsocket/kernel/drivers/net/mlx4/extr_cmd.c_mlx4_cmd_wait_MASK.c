#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {size_t next; int result; int /*<<< orphan*/  out_param; int /*<<< orphan*/  fw_status; int /*<<< orphan*/  done; int /*<<< orphan*/  token; } ;
struct mlx4_cmd {size_t free_head; int /*<<< orphan*/  event_sem; int /*<<< orphan*/  context_lock; struct mlx4_cmd_context* context; scalar_t__ token_mask; } ;
struct TYPE_2__ {struct mlx4_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
			 int out_is_imm, u32 in_modifier, u8 op_modifier,
			 u16 op, unsigned long timeout)
{
	struct mlx4_cmd *cmd = &FUNC5(dev)->cmd;
	struct mlx4_cmd_context *context;
	int err = 0;

	FUNC1(&cmd->event_sem);

	FUNC8(&cmd->context_lock);
	FUNC0(cmd->free_head < 0);
	context = &cmd->context[cmd->free_head];
	context->token += cmd->token_mask + 1;
	cmd->free_head = context->next;
	FUNC9(&cmd->context_lock);

	FUNC2(&context->done);

	FUNC3(dev, in_param, out_param ? *out_param : 0,
		      in_modifier, op_modifier, op, context->token, 1);

	if (!FUNC11(&context->done,
					 FUNC7(timeout))) {
		FUNC6(dev, "command 0x%x timed out (go bit not cleared)\n",
			  op);
		err = -EBUSY;
		goto out;
	}

	err = context->result;
	if (err) {
		FUNC4(dev, "command 0x%x failed: fw status = 0x%x\n",
			 op, context->fw_status);
		goto out;
	}

	if (out_is_imm)
		*out_param = context->out_param;

out:
	FUNC8(&cmd->context_lock);
	context->next = cmd->free_head;
	cmd->free_head = context - cmd->context;
	FUNC9(&cmd->context_lock);

	FUNC10(&cmd->event_sem);
	return err;
}