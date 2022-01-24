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
struct comedi_device {int iobase; } ;
struct TYPE_2__ {int num_asics; } ;

/* Variables and functions */
 int ASIC_IOSIZE ; 
 int FIRST_PAGED_REG ; 
 int NUM_PAGED_REGS ; 
 int NUM_PAGES ; 
 int PORTS_PER_ASIC ; 
 unsigned long REG_PORT0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev)
{				/* sets up an
				   ASIC chip to defaults */
	int asic;

	for (asic = 0; asic < thisboard->num_asics; ++asic) {
		int port, page;
		unsigned long baseaddr = dev->iobase + asic * ASIC_IOSIZE;

		FUNC1(dev, asic, 0);	/* switch back to page 0 */

		/* first, clear all the DIO port bits */
		for (port = 0; port < PORTS_PER_ASIC; ++port)
			FUNC0(0, baseaddr + REG_PORT0 + port);

		/* Next, clear all the paged registers for each page */
		for (page = 1; page < NUM_PAGES; ++page) {
			int reg;
			/* now clear all the paged registers */
			FUNC1(dev, asic, page);
			for (reg = FIRST_PAGED_REG;
			     reg < FIRST_PAGED_REG + NUM_PAGED_REGS; ++reg)
				FUNC0(0, baseaddr + reg);
		}

		/* DEBUG  set rising edge interrupts on port0 of both asics */
		/*switch_page(dev, asic, PAGE_POL);
		   outb(0xff, baseaddr + REG_POL0);
		   switch_page(dev, asic, PAGE_ENAB);
		   outb(0xff, baseaddr + REG_ENAB0); */
		/* END DEBUG */

		FUNC1(dev, asic, 0);	/* switch back to default page 0 */

	}
}