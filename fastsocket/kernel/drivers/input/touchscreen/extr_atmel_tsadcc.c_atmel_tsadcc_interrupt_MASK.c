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
struct input_dev {int dummy; } ;
struct atmel_tsadcc {int bufferedmeasure; int prev_absx; int prev_absy; struct input_dev* input; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ATMEL_TSADCC_CDR0 ; 
 int /*<<< orphan*/  ATMEL_TSADCC_CDR1 ; 
 int /*<<< orphan*/  ATMEL_TSADCC_CDR2 ; 
 int /*<<< orphan*/  ATMEL_TSADCC_CDR3 ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  ATMEL_TSADCC_IDR ; 
 int /*<<< orphan*/  ATMEL_TSADCC_IER ; 
 int /*<<< orphan*/  ATMEL_TSADCC_IMR ; 
 int /*<<< orphan*/  ATMEL_TSADCC_MR ; 
 unsigned int ATMEL_TSADCC_NOCNT ; 
 unsigned int ATMEL_TSADCC_PENCNT ; 
 unsigned int ATMEL_TSADCC_PENDBC ; 
 int /*<<< orphan*/  ATMEL_TSADCC_SR ; 
 int ATMEL_TSADCC_TRGMOD_NONE ; 
 int ATMEL_TSADCC_TRGMOD_PERIOD ; 
 int /*<<< orphan*/  ATMEL_TSADCC_TRGR ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	struct atmel_tsadcc	*ts_dev = (struct atmel_tsadcc *)dev;
	struct input_dev	*input_dev = ts_dev->input;

	unsigned int status;
	unsigned int reg;

	status = FUNC1(ATMEL_TSADCC_SR);
	status &= FUNC1(ATMEL_TSADCC_IMR);

	if (status & ATMEL_TSADCC_NOCNT) {
		/* Contact lost */
		reg = FUNC1(ATMEL_TSADCC_MR) | ATMEL_TSADCC_PENDBC;

		FUNC2(ATMEL_TSADCC_MR, reg);
		FUNC2(ATMEL_TSADCC_TRGR, ATMEL_TSADCC_TRGMOD_NONE);
		FUNC2(ATMEL_TSADCC_IDR,
				   FUNC0(3) | ATMEL_TSADCC_NOCNT);
		FUNC2(ATMEL_TSADCC_IER, ATMEL_TSADCC_PENCNT);

		FUNC4(input_dev, BTN_TOUCH, 0);
		ts_dev->bufferedmeasure = 0;
		FUNC5(input_dev);

	} else if (status & ATMEL_TSADCC_PENCNT) {
		/* Pen detected */
		reg = FUNC1(ATMEL_TSADCC_MR);
		reg &= ~ATMEL_TSADCC_PENDBC;

		FUNC2(ATMEL_TSADCC_IDR, ATMEL_TSADCC_PENCNT);
		FUNC2(ATMEL_TSADCC_MR, reg);
		FUNC2(ATMEL_TSADCC_IER,
				   FUNC0(3) | ATMEL_TSADCC_NOCNT);
		FUNC2(ATMEL_TSADCC_TRGR,
				   ATMEL_TSADCC_TRGMOD_PERIOD | (0x0FFF << 16));

	} else if (status & FUNC0(3)) {
		/* Conversion finished */

		if (ts_dev->bufferedmeasure) {
			/* Last measurement is always discarded, since it can
			 * be erroneous.
			 * Always report previous measurement */
			FUNC3(input_dev, ABS_X, ts_dev->prev_absx);
			FUNC3(input_dev, ABS_Y, ts_dev->prev_absy);
			FUNC4(input_dev, BTN_TOUCH, 1);
			FUNC5(input_dev);
		} else
			ts_dev->bufferedmeasure = 1;

		/* Now make new measurement */
		ts_dev->prev_absx = FUNC1(ATMEL_TSADCC_CDR3) << 10;
		ts_dev->prev_absx /= FUNC1(ATMEL_TSADCC_CDR2);

		ts_dev->prev_absy = FUNC1(ATMEL_TSADCC_CDR1) << 10;
		ts_dev->prev_absy /= FUNC1(ATMEL_TSADCC_CDR0);
	}

	return IRQ_HANDLED;
}