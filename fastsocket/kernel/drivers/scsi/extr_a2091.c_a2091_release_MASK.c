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
struct Scsi_Host {int /*<<< orphan*/  base; } ;
struct TYPE_2__ {scalar_t__ CNTR; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  IRQ_AMIGA_PORTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct Scsi_Host *instance)
{
#ifdef MODULE
	DMA(instance)->CNTR = 0;
	release_mem_region(ZTWO_PADDR(instance->base), 256);
	free_irq(IRQ_AMIGA_PORTS, instance);
	wd33c93_release();
#endif
	return 1;
}