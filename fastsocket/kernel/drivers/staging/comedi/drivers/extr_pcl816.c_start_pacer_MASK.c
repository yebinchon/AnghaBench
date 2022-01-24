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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int,unsigned int) ; 
 scalar_t__ PCL816_CTR0 ; 
 scalar_t__ PCL816_CTR1 ; 
 scalar_t__ PCL816_CTR2 ; 
 scalar_t__ PCL816_CTRCTL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct comedi_device *dev, int mode, unsigned int divisor1,
	    unsigned int divisor2)
{
	FUNC1(0x32, dev->iobase + PCL816_CTRCTL);
	FUNC1(0xff, dev->iobase + PCL816_CTR0);
	FUNC1(0x00, dev->iobase + PCL816_CTR0);
	FUNC2(1);
	FUNC1(0xb4, dev->iobase + PCL816_CTRCTL);	/*  set counter 2 as mode 3 */
	FUNC1(0x74, dev->iobase + PCL816_CTRCTL);	/*  set counter 1 as mode 3 */
	FUNC2(1);

	if (mode == 1) {
		FUNC0("mode %d, divisor1 %d, divisor2 %d\n", mode, divisor1,
			divisor2);
		FUNC1(divisor2 & 0xff, dev->iobase + PCL816_CTR2);
		FUNC1((divisor2 >> 8) & 0xff, dev->iobase + PCL816_CTR2);
		FUNC1(divisor1 & 0xff, dev->iobase + PCL816_CTR1);
		FUNC1((divisor1 >> 8) & 0xff, dev->iobase + PCL816_CTR1);
	}

	/* clear pending interrupts (just in case) */
/* outb(0, dev->iobase + PCL816_CLRINT); */
}