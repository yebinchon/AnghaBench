#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct qlcnic_trans_list {scalar_t__ count; int /*<<< orphan*/  lock; } ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; int /*<<< orphan*/ * send_cmd; struct qlcnic_trans_list rcv_act; } ;
struct qlcnic_bc_trans {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ QLC_BC_COMMAND ; 
 scalar_t__ QLC_BC_RESPONSE ; 
 int /*<<< orphan*/  QLC_BC_VF_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qlcnic_vf_info *vf,
				    struct qlcnic_bc_trans *trans, u8 type)
{
	struct qlcnic_trans_list *t_list;
	unsigned long flags;
	int ret = 0;

	if (type == QLC_BC_RESPONSE) {
		t_list = &vf->rcv_act;
		FUNC3(&t_list->lock, flags);
		t_list->count--;
		FUNC1(&trans->list);
		if (t_list->count > 0)
			ret = 1;
		FUNC4(&t_list->lock, flags);
	}
	if (type == QLC_BC_COMMAND) {
		while (FUNC5(QLC_BC_VF_SEND, &vf->state))
			FUNC2(100);
		vf->send_cmd = NULL;
		FUNC0(QLC_BC_VF_SEND, &vf->state);
	}
	return ret;
}