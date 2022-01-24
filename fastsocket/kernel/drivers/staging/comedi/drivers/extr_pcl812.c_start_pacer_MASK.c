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
 scalar_t__ PCL812_CTR1 ; 
 scalar_t__ PCL812_CTR2 ; 
 scalar_t__ PCL812_CTRCTL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, int mode,
			unsigned int divisor1, unsigned int divisor2)
{
#ifdef PCL812_EXTDEBUG
	printk("pcl812 EDBG: BGN: start_pacer(%d,%u,%u)\n", mode, divisor1,
	       divisor2);
#endif
	FUNC0(0xb4, dev->iobase + PCL812_CTRCTL);
	FUNC0(0x74, dev->iobase + PCL812_CTRCTL);
	FUNC2(1);

	if (mode == 1) {
		FUNC0(divisor2 & 0xff, dev->iobase + PCL812_CTR2);
		FUNC0((divisor2 >> 8) & 0xff, dev->iobase + PCL812_CTR2);
		FUNC0(divisor1 & 0xff, dev->iobase + PCL812_CTR1);
		FUNC0((divisor1 >> 8) & 0xff, dev->iobase + PCL812_CTR1);
	}
#ifdef PCL812_EXTDEBUG
	printk("pcl812 EDBG: END: start_pacer(...)\n");
#endif
}