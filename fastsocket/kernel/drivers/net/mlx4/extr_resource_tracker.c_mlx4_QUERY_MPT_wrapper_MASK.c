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
struct res_mpt {TYPE_1__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  RES_MPT ; 
 scalar_t__ RES_MPT_HW ; 
 int FUNC0 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mpt**) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct mlx4_dev *dev, int slave,
			   struct mlx4_vhcr *vhcr,
			   struct mlx4_cmd_mailbox *inbox,
			   struct mlx4_cmd_mailbox *outbox,
			   struct mlx4_cmd_info *cmd)
{
	int err;
	int index = vhcr->in_modifier;
	struct res_mpt *mpt;
	int id;

	id = index & FUNC2(dev);
	err = FUNC0(dev, slave, id, RES_MPT, &mpt);
	if (err)
		return err;

	if (mpt->com.from_state != RES_MPT_HW) {
		err = -EBUSY;
		goto out;
	}

	err = FUNC1(dev, slave, vhcr, inbox, outbox, cmd);

out:
	FUNC3(dev, slave, id, RES_MPT);
	return err;
}