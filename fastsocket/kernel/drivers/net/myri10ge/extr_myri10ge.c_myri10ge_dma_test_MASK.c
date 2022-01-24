#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct page {int dummy; } ;
struct myri10ge_priv {int tx_boundary; int read_dma; int write_dma; int read_write_dma; TYPE_1__* pdev; } ;
struct myri10ge_cmd {int data0; int data2; void* data1; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MXGEFW_CMD_UNALIGNED_TEST ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int FUNC4 (struct myri10ge_priv*,int,struct myri10ge_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct myri10ge_priv *mgp, int test_type)
{
	struct myri10ge_cmd cmd;
	int status;
	u32 len;
	struct page *dmatest_page;
	dma_addr_t dmatest_bus;
	char *test = " ";

	dmatest_page = FUNC2(GFP_KERNEL);
	if (!dmatest_page)
		return -ENOMEM;
	dmatest_bus = FUNC5(mgp->pdev, dmatest_page, 0, PAGE_SIZE,
				   DMA_BIDIRECTIONAL);

	/* Run a small DMA test.
	 * The magic multipliers to the length tell the firmware
	 * to do DMA read, write, or read+write tests.  The
	 * results are returned in cmd.data0.  The upper 16
	 * bits or the return is the number of transfers completed.
	 * The lower 16 bits is the time in 0.5us ticks that the
	 * transfers took to complete.
	 */

	len = mgp->tx_boundary;

	cmd.data0 = FUNC1(dmatest_bus);
	cmd.data1 = FUNC0(dmatest_bus);
	cmd.data2 = len * 0x10000;
	status = FUNC4(mgp, test_type, &cmd, 0);
	if (status != 0) {
		test = "read";
		goto abort;
	}
	mgp->read_dma = ((cmd.data0 >> 16) * len * 2) / (cmd.data0 & 0xffff);
	cmd.data0 = FUNC1(dmatest_bus);
	cmd.data1 = FUNC0(dmatest_bus);
	cmd.data2 = len * 0x1;
	status = FUNC4(mgp, test_type, &cmd, 0);
	if (status != 0) {
		test = "write";
		goto abort;
	}
	mgp->write_dma = ((cmd.data0 >> 16) * len * 2) / (cmd.data0 & 0xffff);

	cmd.data0 = FUNC1(dmatest_bus);
	cmd.data1 = FUNC0(dmatest_bus);
	cmd.data2 = len * 0x10001;
	status = FUNC4(mgp, test_type, &cmd, 0);
	if (status != 0) {
		test = "read/write";
		goto abort;
	}
	mgp->read_write_dma = ((cmd.data0 >> 16) * len * 2 * 2) /
	    (cmd.data0 & 0xffff);

abort:
	FUNC6(mgp->pdev, dmatest_bus, PAGE_SIZE, DMA_BIDIRECTIONAL);
	FUNC7(dmatest_page);

	if (status != 0 && test_type != MXGEFW_CMD_UNALIGNED_TEST)
		FUNC3(&mgp->pdev->dev, "DMA %s benchmark failed: %d\n",
			 test, status);

	return status;
}