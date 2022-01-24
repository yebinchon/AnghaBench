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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int das6402_ignoreirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCANL ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			     struct comedi_subdevice *s)
{
	/*
	 *  This function should reset the board from whatever condition it
	 *  is in (i.e., acquiring data), to a non-active state.
	 */

	devpriv->das6402_ignoreirq = 1;
#ifdef DEBUG
	printk("das6402: Stopping acquisition\n");
#endif
	devpriv->das6402_ignoreirq = 1;
	FUNC0(0x02, dev->iobase + 10);	/* disable external trigging */
	FUNC1(SCANL, dev->iobase + 2);	/* resets the card fifo */
	FUNC0(0, dev->iobase + 9);	/* disables interrupts */

	FUNC1(SCANL, dev->iobase + 2);

	return 0;
}