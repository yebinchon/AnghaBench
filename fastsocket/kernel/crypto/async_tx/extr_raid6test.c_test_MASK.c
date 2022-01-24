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
struct dma_async_tx_descriptor {int dummy; } ;
struct completion {int dummy; } ;
struct async_submit_ctl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_TX_ACK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  addr_conv ; 
 struct dma_async_tx_descriptor* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct async_submit_ctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  callback ; 
 void** data ; 
 int /*<<< orphan*/  dataptrs ; 
 int /*<<< orphan*/  FUNC2 (struct async_submit_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct completion*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct completion*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 void* recovi ; 
 void* recovj ; 
 void* spare ; 
 scalar_t__ FUNC9 (int,int,int) ; 
 scalar_t__ FUNC10 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(int disks, int *tests)
{
	struct dma_async_tx_descriptor *tx;
	struct async_submit_ctl submit;
	struct completion cmp;
	int err = 0;
	int i, j;

	recovi = data[disks];
	recovj = data[disks+1];
	spare  = data[disks+2];

	FUNC4(disks);

	/* Nuke syndromes */
	FUNC5(FUNC7(data[disks-2]), 0xee, PAGE_SIZE);
	FUNC5(FUNC7(data[disks-1]), 0xee, PAGE_SIZE);

	/* Generate assumed good syndrome */
	FUNC3(&cmp);
	FUNC2(&submit, ASYNC_TX_ACK, NULL, callback, &cmp, addr_conv);
	tx = FUNC0(dataptrs, 0, disks, PAGE_SIZE, &submit);
	FUNC1(tx);

	if (FUNC10(&cmp, FUNC6(3000)) == 0) {
		FUNC8("error: initial gen_syndrome(%d) timed out\n", disks);
		return 1;
	}

	FUNC8("testing the %d-disk case...\n", disks);
	for (i = 0; i < disks-1; i++)
		for (j = i+1; j < disks; j++) {
			(*tests)++;
			err += FUNC9(i, j, disks);
		}

	return err;
}