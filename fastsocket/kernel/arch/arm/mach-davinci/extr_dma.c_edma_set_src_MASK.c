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
typedef  enum fifo_width { ____Placeholder_fifo_width } fifo_width ;
typedef  enum address_mode { ____Placeholder_address_mode } address_mode ;
typedef  unsigned int dma_addr_t ;
struct TYPE_2__ {unsigned int num_slots; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int EDMA_FWID ; 
 int /*<<< orphan*/  PARM_OPT ; 
 int /*<<< orphan*/  PARM_SRC ; 
 int SAM ; 
 TYPE_1__** edma_info ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

void FUNC4(unsigned slot, dma_addr_t src_port,
				enum address_mode mode, enum fifo_width width)
{
	unsigned ctlr;

	ctlr = FUNC1(slot);
	slot = FUNC0(slot);

	if (slot < edma_info[ctlr]->num_slots) {
		unsigned int i = FUNC2(ctlr, PARM_OPT, slot);

		if (mode) {
			/* set SAM and program FWID */
			i = (i & ~(EDMA_FWID)) | (SAM | ((width & 0x7) << 8));
		} else {
			/* clear SAM */
			i &= ~SAM;
		}
		FUNC3(ctlr, PARM_OPT, slot, i);

		/* set the source port address
		   in source register of param structure */
		FUNC3(ctlr, PARM_SRC, slot, src_port);
	}
}