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
struct res_cq {TYPE_1__* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_CQ ; 
 int /*<<< orphan*/  RES_CQ_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_cq**) ; 
 int FUNC2 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct mlx4_dev *dev, int slave,
			  struct mlx4_vhcr *vhcr,
			  struct mlx4_cmd_mailbox *inbox,
			  struct mlx4_cmd_mailbox *outbox,
			  struct mlx4_cmd_info *cmd)
{
	int err;
	int cqn = vhcr->in_modifier;
	struct res_cq *cq;

	err = FUNC1(dev, slave, cqn, RES_CQ_ALLOCATED, &cq);
	if (err)
		return err;
	err = FUNC2(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto out_move;
	FUNC0(&cq->mtt->ref_count);
	FUNC4(dev, slave, RES_CQ, cqn);
	return 0;

out_move:
	FUNC3(dev, slave, RES_CQ, cqn);
	return err;
}