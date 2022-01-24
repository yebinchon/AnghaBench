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
 int /*<<< orphan*/  CSTR ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* frv_dma_channels ; 

int FUNC1(int dma)
{
	unsigned long ioaddr = frv_dma_channels[dma].ioaddr;

	return FUNC0(ioaddr, CSTR) & (1 << 23);

}