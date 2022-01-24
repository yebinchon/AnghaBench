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
struct TYPE_2__ {int fir_base; scalar_t__ speed; } ;
struct w83977af_ir {TYPE_1__ io; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int __u8 ;

/* Variables and functions */
 scalar_t__ ICR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISR ; 
 scalar_t__ PIO_MAX_SPEED ; 
 int /*<<< orphan*/  SET0 ; 
 scalar_t__ SSR ; 
 int FUNC1 (scalar_t__) ; 
 struct w83977af_ir* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct w83977af_ir*,int) ; 
 int FUNC6 (struct w83977af_ir*,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct w83977af_ir *self;
	__u8 set, icr, isr;
	int iobase;

	self = FUNC2(dev);

	iobase = self->io.fir_base;

	/* Save current bank */
	set = FUNC1(iobase+SSR);
	FUNC4(iobase, SET0);
	
	icr = FUNC1(iobase+ICR); 
	isr = FUNC1(iobase+ISR) & icr; /* Mask out the interesting ones */ 

	FUNC3(0, iobase+ICR); /* Disable interrupts */
	
	if (isr) {
		/* Dispatch interrupt handler for the current speed */
		if (self->io.speed > PIO_MAX_SPEED )
			icr = FUNC5(self, isr);
		else
			icr = FUNC6(self, isr);
	}

	FUNC3(icr, iobase+ICR);    /* Restore (new) interrupts */
	FUNC3(set, iobase+SSR);    /* Restore bank register */
	return FUNC0(isr);
}