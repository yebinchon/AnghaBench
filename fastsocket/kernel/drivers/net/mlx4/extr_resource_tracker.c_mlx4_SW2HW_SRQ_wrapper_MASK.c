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
struct res_srq {struct res_mtt* mtt; } ;
struct TYPE_4__ {int /*<<< orphan*/  res_id; } ;
struct res_mtt {TYPE_2__ com; int /*<<< orphan*/  ref_count; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_srq_context {int /*<<< orphan*/  state_logsize_srqn; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_srq_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_MTT ; 
 int /*<<< orphan*/  RES_SRQ ; 
 int /*<<< orphan*/  RES_SRQ_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt*) ; 
 int FUNC3 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt**) ; 
 int FUNC4 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx4_srq_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_srq_context*) ; 
 int FUNC10 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_srq**) ; 

int FUNC11(struct mlx4_dev *dev, int slave,
			   struct mlx4_vhcr *vhcr,
			   struct mlx4_cmd_mailbox *inbox,
			   struct mlx4_cmd_mailbox *outbox,
			   struct mlx4_cmd_info *cmd)
{
	int err;
	int srqn = vhcr->in_modifier;
	struct res_mtt *mtt;
	struct res_srq *srq;
	struct mlx4_srq_context *srqc = inbox->buf;
	int mtt_base = FUNC8(srqc) / dev->caps.mtt_entry_sz;

	if (srqn != (FUNC1(srqc->state_logsize_srqn) & 0xffffff))
		return -EINVAL;

	err = FUNC10(dev, slave, srqn, RES_SRQ_HW, &srq);
	if (err)
		return err;
	err = FUNC3(dev, slave, mtt_base, RES_MTT, &mtt);
	if (err)
		goto ex_abort;
	err = FUNC2(dev, slave, mtt_base, FUNC9(srqc),
			      mtt);
	if (err)
		goto ex_put_mtt;

	err = FUNC4(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto ex_put_mtt;

	FUNC0(&mtt->ref_count);
	srq->mtt = mtt;
	FUNC5(dev, slave, mtt->com.res_id, RES_MTT);
	FUNC7(dev, slave, RES_SRQ, srqn);
	return 0;

ex_put_mtt:
	FUNC5(dev, slave, mtt->com.res_id, RES_MTT);
ex_abort:
	FUNC6(dev, slave, RES_SRQ, srqn);

	return err;
}