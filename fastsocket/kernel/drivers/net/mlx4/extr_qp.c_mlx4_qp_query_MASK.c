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
struct mlx4_qp_context {int dummy; } ;
struct mlx4_qp {int /*<<< orphan*/  qpn; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {scalar_t__ buf; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_QUERY_QP ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_qp_context*,scalar_t__,int) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, struct mlx4_qp *qp,
		  struct mlx4_qp_context *context)
{
	struct mlx4_cmd_mailbox *mailbox;
	int err;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	err = FUNC4(dev, 0, mailbox->dma, qp->qpn, 0,
			   MLX4_CMD_QUERY_QP, MLX4_CMD_TIME_CLASS_A,
			   MLX4_CMD_WRAPPED);
	if (!err)
		FUNC2(context, mailbox->buf + 8, sizeof *context);

	FUNC5(dev, mailbox);
	return err;
}