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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {unsigned long ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCTR ; 
 int /*<<< orphan*/  CSTR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* frv_dma_channels ; 

void FUNC2(int dma)
{
	unsigned long ioaddr = frv_dma_channels[dma].ioaddr;
	uint32_t cctr;
	FUNC0(ioaddr, CSTR, 0);

	cctr = FUNC1(ioaddr, CCTR);
}