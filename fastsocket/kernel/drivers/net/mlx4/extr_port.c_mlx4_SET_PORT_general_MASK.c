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
struct mlx4_set_port_general_context {int pptx; int pfctx; int pprx; int pfcrx; int /*<<< orphan*/  mtu; int /*<<< orphan*/  flags; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_port_general_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int MLX4_SET_PORT_GENERAL ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  SET_PORT_GEN_ALL_VALID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_set_port_general_context*,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC7(struct mlx4_dev *dev, u8 port, int mtu,
			  u8 pptx, u8 pfctx, u8 pprx, u8 pfcrx)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_port_general_context *context;
	int err;
	u32 in_mod;

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	context = mailbox->buf;
	FUNC3(context, 0, sizeof *context);

	context->flags = SET_PORT_GEN_ALL_VALID;
	context->mtu = FUNC2(mtu);
	context->pptx = (pptx * (!pfctx)) << 7;
	context->pfctx = pfctx;
	context->pprx = (pprx * (!pfcrx)) << 7;
	context->pfcrx = pfcrx;

	in_mod = MLX4_SET_PORT_GENERAL << 8 | port;
	err = FUNC5(dev, mailbox->dma, in_mod, 1, MLX4_CMD_SET_PORT,
		       MLX4_CMD_TIME_CLASS_B,  MLX4_CMD_WRAPPED);

	FUNC6(dev, mailbox);
	return err;
}