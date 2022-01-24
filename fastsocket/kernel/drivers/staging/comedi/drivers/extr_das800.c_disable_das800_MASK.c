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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;

/* Variables and functions */
 int CONV_CONTROL ; 
 scalar_t__ DAS800_CONV_CONTROL ; 
 scalar_t__ DAS800_GAIN ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	unsigned long irq_flags;
	FUNC1(&dev->spinlock, irq_flags);
	FUNC0(CONV_CONTROL, dev->iobase + DAS800_GAIN);	/* select dev->iobase + 2 to be conversion control register */
	FUNC0(0x0, dev->iobase + DAS800_CONV_CONTROL);	/* disable hardware triggering of conversions */
	FUNC2(&dev->spinlock, irq_flags);
}