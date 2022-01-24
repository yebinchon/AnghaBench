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
struct TYPE_4__ {int res_id; } ;
struct res_mtt {TYPE_2__ com; int /*<<< orphan*/  ref_count; } ;
struct res_cq {struct res_mtt* mtt; } ;
struct mlx4_vhcr {int dummy; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_context {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RES_MTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt*) ; 
 int FUNC3 (struct mlx4_cq_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_cq_context*) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt**) ; 
 int FUNC6 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mlx4_dev *dev, int slave,
			 struct mlx4_vhcr *vhcr,
			 struct mlx4_cmd_mailbox *inbox,
			 struct mlx4_cmd_mailbox *outbox,
			 struct mlx4_cmd_info *cmd,
			 struct res_cq *cq)
{
	int err;
	struct res_mtt *orig_mtt;
	struct res_mtt *mtt;
	struct mlx4_cq_context *cqc = inbox->buf;
	int mtt_base = FUNC3(cqc) / dev->caps.mtt_entry_sz;

	err = FUNC5(dev, slave, cq->mtt->com.res_id, RES_MTT, &orig_mtt);
	if (err)
		return err;

	if (orig_mtt != cq->mtt) {
		err = -EINVAL;
		goto ex_put;
	}

	err = FUNC5(dev, slave, mtt_base, RES_MTT, &mtt);
	if (err)
		goto ex_put;

	err = FUNC2(dev, slave, mtt_base, FUNC4(cqc), mtt);
	if (err)
		goto ex_put1;
	err = FUNC6(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto ex_put1;
	FUNC0(&orig_mtt->ref_count);
	FUNC7(dev, slave, orig_mtt->com.res_id, RES_MTT);
	FUNC1(&mtt->ref_count);
	cq->mtt = mtt;
	FUNC7(dev, slave, mtt->com.res_id, RES_MTT);
	return 0;

ex_put1:
	FUNC7(dev, slave, mtt->com.res_id, RES_MTT);
ex_put:
	FUNC7(dev, slave, orig_mtt->com.res_id, RES_MTT);

	return err;

}