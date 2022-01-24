#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct mlx4_set_port_scheduler_context {struct mlx4_port_scheduler_tc_cfg_be* tc; } ;
struct mlx4_port_scheduler_tc_cfg_be {void* max_bw_value; void* max_bw_units; void* bw_precentage; void* pg; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_port_scheduler_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int MLX4_NUM_TC ; 
 int MLX4_RATELIMIT_DEFAULT ; 
 int MLX4_RATELIMIT_UNITS ; 
 int MLX4_SET_PORT_SCHEDULER ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_set_port_scheduler_context*,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC7(struct mlx4_dev *dev, u8 port, u8 *tc_tx_bw,
		u8 *pg, u16 *ratelimit)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_port_scheduler_context *context;
	int err;
	u32 in_mod;
	int i;

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	context = mailbox->buf;
	FUNC3(context, 0, sizeof *context);

	for (i = 0; i < MLX4_NUM_TC; i++) {
		struct mlx4_port_scheduler_tc_cfg_be *tc = &context->tc[i];
		u16 r = ratelimit && ratelimit[i] ? ratelimit[i] :
			MLX4_RATELIMIT_DEFAULT;

		tc->pg = FUNC2(pg[i]);
		tc->bw_precentage = FUNC2(tc_tx_bw[i]);

		tc->max_bw_units = FUNC2(MLX4_RATELIMIT_UNITS);
		tc->max_bw_value = FUNC2(r);
	}

	in_mod = MLX4_SET_PORT_SCHEDULER << 8 | port;
	err = FUNC5(dev, mailbox->dma, in_mod, 1, MLX4_CMD_SET_PORT,
		       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);

	FUNC6(dev, mailbox);
	return err;
}