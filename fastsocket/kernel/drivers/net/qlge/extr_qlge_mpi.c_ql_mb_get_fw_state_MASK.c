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
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct mbox_params {int in_count; int out_count; int* mbox_out; int /*<<< orphan*/ * mbox_in; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MB_CMD_GET_FW_STATE ; 
 int MB_CMD_STS_GOOD ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct mbox_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ql_adapter*,struct mbox_params*) ; 

int FUNC3(struct ql_adapter *qdev)
{
	struct mbox_params mbc;
	struct mbox_params *mbcp = &mbc;
	int status = 0;

	FUNC0(mbcp, 0, sizeof(struct mbox_params));

	mbcp->in_count = 1;
	mbcp->out_count = 2;

	mbcp->mbox_in[0] = MB_CMD_GET_FW_STATE;

	status = FUNC2(qdev, mbcp);
	if (status)
		return status;

	if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
		FUNC1(qdev, drv, qdev->ndev,
			  "Failed Get Firmware State.\n");
		status = -EIO;
	}

	/* If bit zero is set in mbx 1 then the firmware is
	 * running, but not initialized.  This should never
	 * happen.
	 */
	if (mbcp->mbox_out[1] & 1) {
		FUNC1(qdev, drv, qdev->ndev,
			  "Firmware waiting for initialization.\n");
		status = -EIO;
	}

	return status;
}