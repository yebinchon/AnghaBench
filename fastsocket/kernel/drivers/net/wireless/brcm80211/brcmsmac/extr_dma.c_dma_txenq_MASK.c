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
typedef  int /*<<< orphan*/  uint ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {unsigned char* data; int /*<<< orphan*/  len; } ;
struct dma_info {int txout; scalar_t__ txin; int ntxd; struct sk_buff** txp; int /*<<< orphan*/  txd64; int /*<<< orphan*/  dmadev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int D64_CTRL1_EOF ; 
 int D64_CTRL1_EOT ; 
 int D64_CTRL1_IOC ; 
 int D64_CTRL1_SOF ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dma_info*,int) ; 
 size_t FUNC4 (struct dma_info*,int) ; 

__attribute__((used)) static void FUNC5(struct dma_info *di, struct sk_buff *p)
{
	unsigned char *data;
	uint len;
	u16 txout;
	u32 flags = 0;
	dma_addr_t pa;

	txout = di->txout;

	if (FUNC0(FUNC3(di, txout) == di->txin))
		return;

	/*
	 * obtain and initialize transmit descriptor entry.
	 */
	data = p->data;
	len = p->len;

	/* get physical address of buffer start */
	pa = FUNC2(di->dmadev, data, len, DMA_TO_DEVICE);

	/* With a DMA segment list, Descriptor table is filled
	 * using the segment list instead of looping over
	 * buffers in multi-chain DMA. Therefore, EOF for SGLIST
	 * is when end of segment list is reached.
	 */
	flags = D64_CTRL1_SOF | D64_CTRL1_IOC | D64_CTRL1_EOF;
	if (txout == (di->ntxd - 1))
		flags |= D64_CTRL1_EOT;

	FUNC1(di, di->txd64, pa, txout, &flags, len);

	txout = FUNC3(di, txout);

	/* save the packet */
	di->txp[FUNC4(di, txout)] = p;

	/* bump the tx descriptor index */
	di->txout = txout;
}