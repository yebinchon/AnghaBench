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
typedef  int u32 ;
struct ocrdma_reg_nsmr_cont {int num_pbl_offset; int last; TYPE_1__* pbl; int /*<<< orphan*/  lrkey; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_hw_mr {TYPE_2__* pbl_table; int /*<<< orphan*/  lkey; } ;
struct ocrdma_dev {int dummy; } ;
struct TYPE_4__ {int pa; } ;
struct TYPE_3__ {int lo; int /*<<< orphan*/  hi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_REGISTER_NSMR_CONT ; 
 int OCRDMA_REG_NSMR_CONT_LAST_SHIFT ; 
 int OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT ; 
 int OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_reg_nsmr_cont*) ; 
 struct ocrdma_reg_nsmr_cont* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ocrdma_dev *dev,
				  struct ocrdma_hw_mr *hwmr, u32 pbl_cnt,
				  u32 pbl_offset, u32 last)
{
	int status = -ENOMEM;
	int i;
	struct ocrdma_reg_nsmr_cont *cmd;

	cmd = FUNC1(OCRDMA_CMD_REGISTER_NSMR_CONT, sizeof(*cmd));
	if (!cmd)
		return -ENOMEM;
	cmd->lrkey = hwmr->lkey;
	cmd->num_pbl_offset = (pbl_cnt << OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT) |
	    (pbl_offset & OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK);
	cmd->last = last << OCRDMA_REG_NSMR_CONT_LAST_SHIFT;

	for (i = 0; i < pbl_cnt; i++) {
		cmd->pbl[i].lo =
		    (u32) (hwmr->pbl_table[i + pbl_offset].pa & 0xffffffff);
		cmd->pbl[i].hi =
		    FUNC3(hwmr->pbl_table[i + pbl_offset].pa);
	}
	status = FUNC2(dev, (struct ocrdma_mqe *)cmd);
	if (status)
		goto mbx_err;
mbx_err:
	FUNC0(cmd);
	return status;
}