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
typedef  int /*<<< orphan*/  u32 ;
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; int /*<<< orphan*/ * mbox_in; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  MB_CMD_GET_MGMNT_TFK_CTL ; 
 scalar_t__ MB_CMD_STS_ERR ; 
 scalar_t__ MB_CMD_STS_GOOD ; 
 scalar_t__ MB_CMD_STS_INVLD_CMD ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct mbox_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ql_adapter*,struct mbox_params*) ; 

__attribute__((used)) static int FUNC4(struct ql_adapter *qdev, u32 *control)
{
	struct mbox_params mbc;
	struct mbox_params *mbcp = &mbc;
	int status;

	FUNC0(mbcp, 0, sizeof(struct mbox_params));
	*control = 0;

	mbcp->in_count = 1;
	mbcp->out_count = 1;

	mbcp->mbox_in[0] = MB_CMD_GET_MGMNT_TFK_CTL;

	status = FUNC3(qdev, mbcp);
	if (status)
		return status;

	if (mbcp->mbox_out[0] == MB_CMD_STS_GOOD) {
		*control = mbcp->mbox_in[1];
		return status;
	}

	if (mbcp->mbox_out[0] == MB_CMD_STS_INVLD_CMD) {
		 FUNC2(qdev, drv, KERN_DEBUG, qdev->ndev,
			  "Command not supported by firmware version.\n");
		status = -EINVAL;
	} else if (mbcp->mbox_out[0] == MB_CMD_STS_ERR) {
		FUNC1(qdev, drv, qdev->ndev,
			  "Failed to get MPI traffic control.\n");
		status = -EIO;
	}
	return status;
}