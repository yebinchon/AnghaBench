#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct res_eq {TYPE_2__* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  res_id; } ;
struct TYPE_4__ {TYPE_1__ com; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_EQ ; 
 int /*<<< orphan*/  RES_EQ_RESERVED ; 
 int /*<<< orphan*/  RES_MTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_eq**) ; 
 int FUNC2 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct mlx4_dev *dev, int slave,
			  struct mlx4_vhcr *vhcr,
			  struct mlx4_cmd_mailbox *inbox,
			  struct mlx4_cmd_mailbox *outbox,
			  struct mlx4_cmd_info *cmd)
{
	int eqn = vhcr->in_modifier;
	int res_id = eqn | (slave << 8);
	struct res_eq *eq;
	int err;

	err = FUNC1(dev, slave, res_id, RES_EQ_RESERVED, &eq);
	if (err)
		return err;

	err = FUNC2(dev, slave, eq->mtt->com.res_id, RES_MTT, NULL);
	if (err)
		goto ex_abort;

	err = FUNC3(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto ex_put;

	FUNC0(&eq->mtt->ref_count);
	FUNC4(dev, slave, eq->mtt->com.res_id, RES_MTT);
	FUNC7(dev, slave, RES_EQ, res_id);
	FUNC5(dev, slave, res_id, 1, RES_EQ, 0);

	return 0;

ex_put:
	FUNC4(dev, slave, eq->mtt->com.res_id, RES_MTT);
ex_abort:
	FUNC6(dev, slave, RES_EQ, res_id);

	return err;
}