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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  stdma_isr ; 
 void* stdma_isr_data ; 
 int stdma_locked ; 
 int /*<<< orphan*/  stdma_wait ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(irq_handler_t handler, void *data)
{
	unsigned long flags;

	FUNC1(flags);		/* protect lock */

	/* Since the DMA is used for file system purposes, we
	 have to sleep uninterruptible (there may be locked
	 buffers) */
	FUNC2(stdma_wait, !stdma_locked);

	stdma_locked   = 1;
	stdma_isr      = handler;
	stdma_isr_data = data;
	FUNC0(flags);
}