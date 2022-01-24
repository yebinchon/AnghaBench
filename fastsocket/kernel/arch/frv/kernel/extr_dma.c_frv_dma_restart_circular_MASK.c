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
struct TYPE_2__ {unsigned long ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCTR ; 
 int /*<<< orphan*/  CSTR ; 
 unsigned long DMAC_CCTRx_ACT ; 
 unsigned long DMAC_CSTRx_CE ; 
 int /*<<< orphan*/  SIX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_1__* frv_dma_channels ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(int dma, unsigned long six)
{
	unsigned long ioaddr = frv_dma_channels[dma].ioaddr;

	FUNC0(ioaddr, SIX,  six);
	FUNC0(ioaddr, CSTR, FUNC1(ioaddr, CSTR) & ~DMAC_CSTRx_CE);
	FUNC4();

	FUNC2(ioaddr, CCTR, FUNC1(ioaddr, CCTR) | DMAC_CCTRx_ACT);
	FUNC3(dma);

}