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
typedef  int /*<<< orphan*/  u8 ;
struct beiscsi_hba {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  mbox_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct be_mcc_wrb*,int) ; 
 int FUNC1 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 struct beiscsi_hba* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct be_ctrl_info *ctrl)
{
	struct be_mcc_wrb *wrb = FUNC7(&ctrl->mbox_mem);
	struct beiscsi_hba *phba = FUNC4(ctrl->pdev);
	int status;
	u8 *endian_check;

	FUNC5(&ctrl->mbox_lock);
	FUNC3(wrb, 0, sizeof(*wrb));

	endian_check = (u8 *) wrb;
	*endian_check++ = 0xFF;
	*endian_check++ = 0x12;
	*endian_check++ = 0x34;
	*endian_check++ = 0xFF;
	*endian_check++ = 0xFF;
	*endian_check++ = 0x56;
	*endian_check++ = 0x78;
	*endian_check++ = 0xFF;
	FUNC0(wrb, sizeof(*wrb));

	status = FUNC1(ctrl);
	if (status)
		FUNC2(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BC_%d : be_cmd_fw_initialize Failed\n");

	FUNC6(&ctrl->mbox_lock);
	return status;
}