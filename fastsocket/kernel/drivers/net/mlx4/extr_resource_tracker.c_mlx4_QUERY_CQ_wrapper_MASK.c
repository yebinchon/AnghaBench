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
struct TYPE_2__ {scalar_t__ from_state; } ;
struct res_cq {TYPE_1__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_CQ ; 
 scalar_t__ RES_CQ_HW ; 
 int FUNC0 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_cq**) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx4_dev *dev, int slave,
			  struct mlx4_vhcr *vhcr,
			  struct mlx4_cmd_mailbox *inbox,
			  struct mlx4_cmd_mailbox *outbox,
			  struct mlx4_cmd_info *cmd)
{
	int cqn = vhcr->in_modifier;
	struct res_cq *cq;
	int err;

	err = FUNC0(dev, slave, cqn, RES_CQ, &cq);
	if (err)
		return err;

	if (cq->com.from_state != RES_CQ_HW)
		goto ex_put;

	err = FUNC1(dev, slave, vhcr, inbox, outbox, cmd);
ex_put:
	FUNC2(dev, slave, cqn, RES_CQ);

	return err;
}