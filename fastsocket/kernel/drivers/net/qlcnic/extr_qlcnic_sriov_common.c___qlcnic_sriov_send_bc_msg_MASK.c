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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; TYPE_1__* adapter; } ;
struct qlcnic_bc_trans {int trans_state; } ;
struct TYPE_2__ {scalar_t__ need_fw_reset; } ;

/* Variables and functions */
 int EIO ; 
#define  QLC_ABORT 132 
 int /*<<< orphan*/  QLC_BC_VF_CHANNEL ; 
 int /*<<< orphan*/  QLC_BC_VF_FLR ; 
#define  QLC_END 131 
#define  QLC_INIT 130 
#define  QLC_WAIT_FOR_CHANNEL_FREE 129 
#define  QLC_WAIT_FOR_RESP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_bc_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_bc_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_bc_trans*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_bc_trans *trans,
				      struct qlcnic_vf_info *vf, u8 type)
{
	bool flag = true;
	int err = -EIO;

	while (flag) {
		if (FUNC4(QLC_BC_VF_FLR, &vf->state) ||
		    vf->adapter->need_fw_reset)
			trans->trans_state = QLC_ABORT;

		switch (trans->trans_state) {
		case QLC_INIT:
			trans->trans_state = QLC_WAIT_FOR_CHANNEL_FREE;
			if (FUNC1(trans, type))
				trans->trans_state = QLC_ABORT;
			break;
		case QLC_WAIT_FOR_CHANNEL_FREE:
			FUNC2(trans, type);
			break;
		case QLC_WAIT_FOR_RESP:
			FUNC3(trans);
			break;
		case QLC_END:
			err = 0;
			flag = false;
			break;
		case QLC_ABORT:
			err = -EIO;
			flag = false;
			FUNC0(QLC_BC_VF_CHANNEL, &vf->state);
			break;
		default:
			err = -EIO;
			flag = false;
		}
	}
	return err;
}