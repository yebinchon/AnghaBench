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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {scalar_t__ from_state; } ;
struct res_qp {int /*<<< orphan*/  sched_queue; TYPE_2__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_3__ {int /*<<< orphan*/  sched_queue; } ;
struct mlx4_qp_context {TYPE_1__ pri_path; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  QP_TRANS_INIT2RTR ; 
 int /*<<< orphan*/  RES_QP ; 
 scalar_t__ RES_QP_HW ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ; 
 int FUNC1 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_qp**) ; 
 int FUNC2 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ; 
 int FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int,int) ; 
 int FUNC7 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct mlx4_dev *dev, int slave,
			     struct mlx4_vhcr *vhcr,
			     struct mlx4_cmd_mailbox *inbox,
			     struct mlx4_cmd_mailbox *outbox,
			     struct mlx4_cmd_info *cmd)
{
	int err;
	struct mlx4_qp_context *qpc = inbox->buf + 8;
	int qpn = vhcr->in_modifier & 0x7fffff;
	struct res_qp *qp;
	u8 orig_sched_queue;

	err = FUNC7(dev, inbox, QP_TRANS_INIT2RTR, slave);
	if (err)
		return err;

	FUNC5(dev, slave, inbox);
	FUNC4(dev, inbox, (u8)slave);
	FUNC0(dev, vhcr, qpc);
	orig_sched_queue = qpc->pri_path.sched_queue;
	err = FUNC6(dev, inbox, slave, qpn);
	if (err)
		return err;

	err = FUNC1(dev, slave, qpn, RES_QP, &qp);
	if (err)
		return err;
	if (qp->com.from_state != RES_QP_HW) {
		err = -EBUSY;
		goto out;
	}

	err = FUNC2(dev, slave, vhcr, inbox, outbox, cmd);
out:
	/* if no error, save sched queue value passed in by VF. This is
	 * essentially the QOS value provided by the VF. This will be useful
	 * if we allow dynamic changes from VST back to VGT
	 */
	if (!err)
		qp->sched_queue = orig_sched_queue;

	FUNC3(dev, slave, qpn, RES_QP);
	return err;
}