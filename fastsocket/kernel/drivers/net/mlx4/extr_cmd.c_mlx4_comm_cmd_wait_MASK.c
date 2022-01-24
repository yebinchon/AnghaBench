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
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {size_t next; int result; scalar_t__ fw_status; int /*<<< orphan*/  done; int /*<<< orphan*/  token; } ;
struct mlx4_cmd {size_t free_head; int /*<<< orphan*/  event_sem; int /*<<< orphan*/  context_lock; struct mlx4_cmd_context* context; scalar_t__ token_mask; } ;
struct TYPE_2__ {struct mlx4_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CMD_STAT_MULTI_FUNC_REQ ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,char*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct mlx4_dev *dev, u8 op,
			      u16 param, unsigned long timeout)
{
	struct mlx4_cmd *cmd = &FUNC7(dev)->cmd;
	struct mlx4_cmd_context *context;
	unsigned long end;
	int err = 0;

	FUNC3(&cmd->event_sem);

	FUNC10(&cmd->context_lock);
	FUNC0(cmd->free_head < 0);
	context = &cmd->context[cmd->free_head];
	context->token += cmd->token_mask + 1;
	cmd->free_head = context->next;
	FUNC11(&cmd->context_lock);

	FUNC4(&context->done);

	FUNC5(dev, op, param);

	if (!FUNC14(&context->done,
					 FUNC9(timeout))) {
		FUNC8(dev, "communication channel command 0x%x timed out\n",
			  op);
		err = -EBUSY;
		goto out;
	}

	err = context->result;
	if (err && context->fw_status != CMD_STAT_MULTI_FUNC_REQ) {
		FUNC6(dev, "command 0x%x failed: fw status = 0x%x\n",
			 op, context->fw_status);
		goto out;
	}

out:
	/* wait for comm channel ready
	 * this is necessary for prevention the race
	 * when switching between event to polling mode
	 */
	end = FUNC9(timeout) + jiffies;
	while (FUNC1(dev) && FUNC12(jiffies, end))
		FUNC2();

	FUNC10(&cmd->context_lock);
	context->next = cmd->free_head;
	cmd->free_head = context - cmd->context;
	FUNC11(&cmd->context_lock);

	FUNC13(&cmd->event_sem);
	return err;
}