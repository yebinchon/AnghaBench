#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
struct TYPE_4__ {int do_bits; } ;
struct TYPE_3__ {int resolution; } ;

/* Variables and functions */
 int CIO_ENHF ; 
 int CONTROL1 ; 
 int CONTROL1_INTE ; 
 int CONV_CONTROL ; 
 int CONV_HCEN ; 
 scalar_t__ DAS800_CONTROL1 ; 
 scalar_t__ DAS800_CONV_CONTROL ; 
 scalar_t__ DAS800_GAIN ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	unsigned long irq_flags;
	FUNC1(&dev->spinlock, irq_flags);
	/*  enable fifo-half full interrupts for cio-das802/16 */
	if (thisboard->resolution == 16)
		FUNC0(CIO_ENHF, dev->iobase + DAS800_GAIN);
	FUNC0(CONV_CONTROL, dev->iobase + DAS800_GAIN);	/* select dev->iobase + 2 to be conversion control register */
	FUNC0(CONV_HCEN, dev->iobase + DAS800_CONV_CONTROL);	/* enable hardware triggering */
	FUNC0(CONTROL1, dev->iobase + DAS800_GAIN);	/* select dev->iobase + 2 to be control register 1 */
	FUNC0(CONTROL1_INTE | devpriv->do_bits, dev->iobase + DAS800_CONTROL1);	/* enable card's interrupt */
	FUNC2(&dev->spinlock, irq_flags);
}