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
struct TYPE_2__ {int fir_base; scalar_t__ direction; } ;
struct w83977af_ir {TYPE_1__ io; } ;
typedef  int __u8 ;

/* Variables and functions */
 int ICR_EDMAI ; 
 int ICR_EFSFI ; 
 int ICR_ETMRI ; 
 scalar_t__ IO_XMIT ; 
 scalar_t__ IR_MSL ; 
 int IR_MSL_EN_TMR ; 
 int ISR_DMA_I ; 
 int ISR_FEND_I ; 
 int ISR_FSF_I ; 
 int ISR_TMR_I ; 
 int /*<<< orphan*/  SET4 ; 
 scalar_t__ SSR ; 
 scalar_t__ TMRH ; 
 scalar_t__ TMRL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct w83977af_ir*) ; 
 scalar_t__ FUNC4 (struct w83977af_ir*) ; 
 int /*<<< orphan*/  FUNC5 (struct w83977af_ir*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct w83977af_ir*) ; 

__attribute__((used)) static __u8 FUNC7(struct w83977af_ir *self, int isr)
{
	__u8 new_icr = 0;
	__u8 set;
	int iobase;

	iobase = self->io.fir_base;
	set = FUNC0(iobase+SSR);
	
	/* End of frame detected in FIFO */
	if (isr & (ISR_FEND_I|ISR_FSF_I)) {
		if (FUNC4(self)) {
			
			/* Wait for next status FIFO interrupt */
			new_icr |= ICR_EFSFI;
		} else {
			/* DMA not finished yet */

			/* Set timer value, resolution 1 ms */
			FUNC2(iobase, SET4);
			FUNC1(0x01, iobase+TMRL); /* 1 ms */
			FUNC1(0x00, iobase+TMRH);

			/* Start timer */
			FUNC1(IR_MSL_EN_TMR, iobase+IR_MSL);

			new_icr |= ICR_ETMRI;
		}
	}
	/* Timer finished */
	if (isr & ISR_TMR_I) {
		/* Disable timer */
		FUNC2(iobase, SET4);
		FUNC1(0, iobase+IR_MSL);

		/* Clear timer event */
		/* switch_bank(iobase, SET0); */
/* 		outb(ASCR_CTE, iobase+ASCR); */

		/* Check if this is a TX timer interrupt */
		if (self->io.direction == IO_XMIT) {
			FUNC5(self, iobase);

			new_icr |= ICR_EDMAI;
		} else {
			/* Check if DMA has now finished */
			FUNC4(self);

			new_icr |= ICR_EFSFI;
		}
	}	
	/* Finished with DMA */
	if (isr & ISR_DMA_I) {
		FUNC6(self);

		/* Check if there are more frames to be transmitted */
		/* if (irda_device_txqueue_empty(self)) { */
		
		/* Prepare for receive 
		 * 
		 * ** Netwinder Tx DMA likes that we do this anyway **
		 */
		FUNC3(self);
		new_icr = ICR_EFSFI;
	       /* } */
	}
	
	/* Restore set */
	FUNC1(set, iobase+SSR);

	return new_icr;
}