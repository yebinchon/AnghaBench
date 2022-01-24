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
struct mlx4_srq_context {int /*<<< orphan*/  limit_watermark; } ;
struct mlx4_srq {int /*<<< orphan*/  srqn; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_srq_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, struct mlx4_srq *srq, int *limit_watermark)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_srq_context *srq_context;
	int err;

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	srq_context = mailbox->buf;

	err = FUNC3(dev, mailbox, srq->srqn);
	if (err)
		goto err_out;
	*limit_watermark = FUNC2(srq_context->limit_watermark);

err_out:
	FUNC5(dev, mailbox);
	return err;
}