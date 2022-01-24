#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_mcast_ramrod_params {int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/ * mcast_obj; } ;
struct TYPE_4__ {struct bnx2x_mcast_ramrod_params mcast; } ;
struct bnx2x_virtf {int /*<<< orphan*/  mcast_obj; TYPE_1__ op_params; } ;
struct bnx2x_vfop_cmd {int /*<<< orphan*/  block; int /*<<< orphan*/  done; } ;
struct TYPE_5__ {int mc_num; struct bnx2x_mcast_list_elem* mc; } ;
struct TYPE_6__ {TYPE_2__ mc_list; } ;
struct bnx2x_vfop {TYPE_3__ args; } ;
struct bnx2x_mcast_list_elem {int /*<<< orphan*/  mac; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  bnx2x_mac_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_VFOP_MCAST_DEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 struct bnx2x_vfop* FUNC0 (struct bnx2x*,struct bnx2x_virtf*) ; 
 int /*<<< orphan*/  bnx2x_vfop_mcast ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnx2x*,struct bnx2x_virtf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x_mcast_list_elem*) ; 
 struct bnx2x_mcast_list_elem* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct bnx2x *bp,
			 struct bnx2x_virtf *vf,
			 struct bnx2x_vfop_cmd *cmd,
			 bnx2x_mac_addr_t *mcasts,
			 int mcast_num, bool drv_only)
{
	struct bnx2x_vfop *vfop = NULL;
	size_t mc_sz = mcast_num * sizeof(struct bnx2x_mcast_list_elem);
	struct bnx2x_mcast_list_elem *mc = mc_sz ? FUNC4(mc_sz, GFP_KERNEL) :
					   NULL;

	if (!mc_sz || mc) {
		vfop = FUNC0(bp, vf);
		if (vfop) {
			int i;
			struct bnx2x_mcast_ramrod_params *ramrod =
				&vf->op_params.mcast;

			/* set ramrod params */
			FUNC5(ramrod, 0, sizeof(*ramrod));
			ramrod->mcast_obj = &vf->mcast_obj;
			if (drv_only)
				FUNC6(RAMROD_DRV_CLR_ONLY,
					&ramrod->ramrod_flags);

			/* copy mcasts pointers */
			vfop->args.mc_list.mc_num = mcast_num;
			vfop->args.mc_list.mc = mc;
			for (i = 0; i < mcast_num; i++)
				mc[i].mac = mcasts[i];

			FUNC1(BNX2X_VFOP_MCAST_DEL,
					 bnx2x_vfop_mcast, cmd->done);
			return FUNC2(bp, vf, bnx2x_vfop_mcast,
						     cmd->block);
		} else {
			FUNC3(mc);
		}
	}
	return -ENOMEM;
}