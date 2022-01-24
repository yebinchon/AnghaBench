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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; void** mbox_in; } ;

/* Variables and functions */
 int EIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* MB_CMD_DUMP_RISC_RAM ; 
 scalar_t__ MB_CMD_STS_GOOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (struct mbox_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct ql_adapter*,struct mbox_params*) ; 

int FUNC6(struct ql_adapter *qdev, u64 req_dma, u32 addr,
	u32 size)
{
	int status = 0;
	struct mbox_params mbc;
	struct mbox_params *mbcp = &mbc;

	FUNC3(mbcp, 0, sizeof(struct mbox_params));

	mbcp->in_count = 9;
	mbcp->out_count = 1;

	mbcp->mbox_in[0] = MB_CMD_DUMP_RISC_RAM;
	mbcp->mbox_in[1] = FUNC0(addr);
	mbcp->mbox_in[2] = FUNC2(req_dma);
	mbcp->mbox_in[3] = FUNC0(req_dma);
	mbcp->mbox_in[4] = FUNC2(size);
	mbcp->mbox_in[5] = FUNC0(size);
	mbcp->mbox_in[6] = FUNC2(FUNC1(req_dma));
	mbcp->mbox_in[7] = FUNC0(FUNC1(req_dma));
	mbcp->mbox_in[8] = FUNC2(addr);


	status = FUNC5(qdev, mbcp);
	if (status)
		return status;

	if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
		FUNC4(qdev, drv, qdev->ndev, "Failed to dump risc RAM.\n");
		status = -EIO;
	}
	return status;
}