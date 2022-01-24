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
 int /*<<< orphan*/  BCL ; 
 int /*<<< orphan*/  CCTR ; 
 int /*<<< orphan*/  CSTR ; 
 int /*<<< orphan*/  DBA ; 
 int DMAC_CCTRx_ACT ; 
 int /*<<< orphan*/  PIX ; 
 int /*<<< orphan*/  SBA ; 
 int /*<<< orphan*/  SIX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* frv_dma_channels ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(int dma,
		   unsigned long sba, unsigned long dba,
		   unsigned long pix, unsigned long six, unsigned long bcl)
{
	unsigned long ioaddr = frv_dma_channels[dma].ioaddr;

	FUNC0(ioaddr, SBA,  sba);
	FUNC0(ioaddr, DBA,  dba);
	FUNC0(ioaddr, PIX,  pix);
	FUNC0(ioaddr, SIX,  six);
	FUNC0(ioaddr, BCL,  bcl);
	FUNC0(ioaddr, CSTR, 0);
	FUNC4();

	FUNC2(ioaddr, CCTR, FUNC1(ioaddr, CCTR) | DMAC_CCTRx_ACT);
	FUNC3(dma);

}