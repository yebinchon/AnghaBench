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
struct res_cq {struct res_mtt* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_context {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_CQ ; 
 int /*<<< orphan*/  RES_CQ_HW ; 
 int /*<<< orphan*/  RES_MTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt*) ; 
 int FUNC2 (struct mlx4_cq_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_cq_context*) ; 
 int FUNC4 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_cq**) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt**) ; 
 int FUNC6 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct mlx4_dev *dev, int slave,
			  struct mlx4_vhcr *vhcr,
			  struct mlx4_cmd_mailbox *inbox,
			  struct mlx4_cmd_mailbox *outbox,
			  struct mlx4_cmd_info *cmd)
{
	int err;
	int cqn = vhcr->in_modifier;
	struct mlx4_cq_context *cqc = inbox->buf;
	int mtt_base = FUNC2(cqc) / dev->caps.mtt_entry_sz;
	struct res_cq *cq;
	struct res_mtt *mtt;

	err = FUNC4(dev, slave, cqn, RES_CQ_HW, &cq);
	if (err)
		return err;
	err = FUNC5(dev, slave, mtt_base, RES_MTT, &mtt);
	if (err)
		goto out_move;
	err = FUNC1(dev, slave, mtt_base, FUNC3(cqc), mtt);
	if (err)
		goto out_put;
	err = FUNC6(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto out_put;
	FUNC0(&mtt->ref_count);
	cq->mtt = mtt;
	FUNC7(dev, slave, mtt->com.res_id, RES_MTT);
	FUNC9(dev, slave, RES_CQ, cqn);
	return 0;

out_put:
	FUNC7(dev, slave, mtt->com.res_id, RES_MTT);
out_move:
	FUNC8(dev, slave, RES_CQ, cqn);
	return err;
}