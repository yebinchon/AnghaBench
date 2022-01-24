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
struct res_srq {TYPE_1__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  RES_SRQ ; 
 scalar_t__ RES_SRQ_HW ; 
 int FUNC0 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_srq**) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx4_dev *dev, int slave,
			   struct mlx4_vhcr *vhcr,
			   struct mlx4_cmd_mailbox *inbox,
			   struct mlx4_cmd_mailbox *outbox,
			   struct mlx4_cmd_info *cmd)
{
	int err;
	int srqn = vhcr->in_modifier;
	struct res_srq *srq;

	err = FUNC0(dev, slave, srqn, RES_SRQ, &srq);
	if (err)
		return err;
	if (srq->com.from_state != RES_SRQ_HW) {
		err = -EBUSY;
		goto out;
	}
	err = FUNC1(dev, slave, vhcr, inbox, outbox, cmd);
out:
	FUNC2(dev, slave, srqn, RES_SRQ);
	return err;
}