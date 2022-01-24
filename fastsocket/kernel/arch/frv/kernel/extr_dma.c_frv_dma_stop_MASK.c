#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {unsigned long ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCL ; 
 int /*<<< orphan*/  CCTR ; 
 int /*<<< orphan*/  CSTR ; 
 int DMAC_CCTRx_ACT ; 
 int DMAC_CCTRx_FC ; 
 int DMAC_CCTRx_IE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* frv_dma_channels ; 

void FUNC4(int dma)
{
	unsigned long ioaddr = frv_dma_channels[dma].ioaddr;
	uint32_t cctr;

	FUNC0(ioaddr, CSTR, 0);
	cctr = FUNC1(ioaddr, CCTR);
	cctr &= ~(DMAC_CCTRx_IE | DMAC_CCTRx_ACT);
	cctr |= DMAC_CCTRx_FC; 	/* fifo clear */
	FUNC2(ioaddr, CCTR, cctr);
	FUNC2(ioaddr, BCL,  0);
	FUNC3(dma);
}