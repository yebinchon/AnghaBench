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
struct TYPE_4__ {int /*<<< orphan*/  res_id; } ;
struct res_mtt {TYPE_2__ com; int /*<<< orphan*/  ref_count; } ;
struct res_eq {struct res_mtt* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_eq_context {int dummy; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_eq_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_EQ ; 
 int /*<<< orphan*/  RES_EQ_HW ; 
 int /*<<< orphan*/  RES_MTT ; 
 int FUNC0 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int,struct res_mtt*) ; 
 int FUNC3 (struct mlx4_eq_context*) ; 
 int FUNC4 (struct mlx4_eq_context*) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_eq**) ; 
 int FUNC6 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt**) ; 
 int FUNC7 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 

int FUNC12(struct mlx4_dev *dev, int slave,
			  struct mlx4_vhcr *vhcr,
			  struct mlx4_cmd_mailbox *inbox,
			  struct mlx4_cmd_mailbox *outbox,
			  struct mlx4_cmd_info *cmd)
{
	int err;
	int eqn = vhcr->in_modifier;
	int res_id = (slave << 8) | eqn;
	struct mlx4_eq_context *eqc = inbox->buf;
	int mtt_base = FUNC3(eqc) / dev->caps.mtt_entry_sz;
	int mtt_size = FUNC4(eqc);
	struct res_eq *eq;
	struct res_mtt *mtt;

	err = FUNC0(dev, slave, res_id, 1, RES_EQ, 0);
	if (err)
		return err;
	err = FUNC5(dev, slave, res_id, RES_EQ_HW, &eq);
	if (err)
		goto out_add;

	err = FUNC6(dev, slave, mtt_base, RES_MTT, &mtt);
	if (err)
		goto out_move;

	err = FUNC2(dev, slave, mtt_base, mtt_size, mtt);
	if (err)
		goto out_put;

	err = FUNC7(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto out_put;

	FUNC1(&mtt->ref_count);
	eq->mtt = mtt;
	FUNC8(dev, slave, mtt->com.res_id, RES_MTT);
	FUNC11(dev, slave, RES_EQ, res_id);
	return 0;

out_put:
	FUNC8(dev, slave, mtt->com.res_id, RES_MTT);
out_move:
	FUNC10(dev, slave, RES_EQ, res_id);
out_add:
	FUNC9(dev, slave, res_id, 1, RES_EQ, 0);
	return err;
}