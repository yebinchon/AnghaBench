#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {int /*<<< orphan*/  cntlstat; } ;
struct TYPE_7__ {TYPE_1__ parport; } ;
struct TYPE_8__ {TYPE_2__ ctrl; } ;
struct TYPE_10__ {TYPE_3__ perif; } ;
struct TYPE_9__ {int irq_on; int dir; int buf; size_t len; int next; size_t left; scalar_t__ ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  MACEISA_PAR_CTXA_IRQ ; 
 int /*<<< orphan*/  MACEISA_PAR_CTXB_IRQ ; 
 int MACEPAR_CONTEXT_DATA_BOUND ; 
 int /*<<< orphan*/  MACEPAR_CTLSTAT_DIRECTION ; 
 int /*<<< orphan*/  MACEPAR_CTLSTAT_ENABLE ; 
 int /*<<< orphan*/  MACEPAR_CTLSTAT_RESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* mace ; 
 TYPE_4__ parport_ip32_dma ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(enum dma_data_direction dir,
				  void *addr, size_t count)
{
	unsigned int limit;
	u64 ctrl;

	FUNC5(NULL, "(%d, %lu)", dir, (unsigned long)count);

	/* FIXME - add support for DMA_FROM_DEVICE.  In this case, buffer must
	 * be 64 bytes aligned. */
	FUNC0(dir != DMA_TO_DEVICE);

	/* Reset DMA controller */
	ctrl = MACEPAR_CTLSTAT_RESET;
	FUNC6(ctrl, &mace->perif.ctrl.parport.cntlstat);

	/* DMA IRQs should normally be enabled */
	if (!parport_ip32_dma.irq_on) {
		FUNC1(1);
		FUNC3(MACEISA_PAR_CTXA_IRQ);
		FUNC3(MACEISA_PAR_CTXB_IRQ);
		parport_ip32_dma.irq_on = 1;
	}

	/* Prepare DMA pointers */
	parport_ip32_dma.dir = dir;
	parport_ip32_dma.buf = FUNC2(NULL, addr, count, dir);
	parport_ip32_dma.len = count;
	parport_ip32_dma.next = parport_ip32_dma.buf;
	parport_ip32_dma.left = parport_ip32_dma.len;
	parport_ip32_dma.ctx = 0;

	/* Setup DMA direction and first two contexts */
	ctrl = (dir == DMA_TO_DEVICE) ? 0 : MACEPAR_CTLSTAT_DIRECTION;
	FUNC6(ctrl, &mace->perif.ctrl.parport.cntlstat);
	/* Single transfer should not cross a 4K page boundary */
	limit = MACEPAR_CONTEXT_DATA_BOUND -
		(parport_ip32_dma.next & (MACEPAR_CONTEXT_DATA_BOUND - 1));
	FUNC4(limit);
	FUNC4(MACEPAR_CONTEXT_DATA_BOUND);

	/* Real start of DMA transfer */
	ctrl |= MACEPAR_CTLSTAT_ENABLE;
	FUNC6(ctrl, &mace->perif.ctrl.parport.cntlstat);

	return 0;
}