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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ adc_coding; } ;

/* Variables and functions */
 scalar_t__ AD_CLEAR_REG ; 
 scalar_t__ AD_FIFO_REG ; 
 int ATMIO16D_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ETIME ; 
 scalar_t__ MUX_GAIN_REG ; 
 scalar_t__ START_CONVERT_REG ; 
 int STAT_AD_CONVAVAIL ; 
 int STAT_AD_OVERFLOW ; 
 scalar_t__ STAT_REG ; 
 scalar_t__ adc_2comp ; 
 TYPE_1__* devpriv ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	int i, t;
	int chan;
	int gain;
	int status;

#ifdef DEBUG1
	printk("atmio16d_ai_insn_read\n");
#endif
	chan = FUNC0(insn->chanspec);
	gain = FUNC1(insn->chanspec);

	/* reset the Analog input circuitry */
	/* outw( 0, dev->iobase+AD_CLEAR_REG ); */
	/* reset the Analog Input MUX Counter to 0 */
	/* outw( 0, dev->iobase+MUX_CNTR_REG ); */

	/* set the Input MUX gain */
	FUNC3(chan | (gain << 6), dev->iobase + MUX_GAIN_REG);

	for (i = 0; i < insn->n; i++) {
		/* start the conversion */
		FUNC3(0, dev->iobase + START_CONVERT_REG);
		/* wait for it to finish */
		for (t = 0; t < ATMIO16D_TIMEOUT; t++) {
			/* check conversion status */
			status = FUNC2(dev->iobase + STAT_REG);
#ifdef DEBUG1
			printk("status=%x\n", status);
#endif
			if (status & STAT_AD_CONVAVAIL) {
				/* read the data now */
				data[i] = FUNC2(dev->iobase + AD_FIFO_REG);
				/* change to two's complement if need be */
				if (devpriv->adc_coding == adc_2comp) {
					data[i] ^= 0x800;
				}
				break;
			}
			if (status & STAT_AD_OVERFLOW) {
				FUNC4("atmio16d: a/d FIFO overflow\n");
				FUNC3(0, dev->iobase + AD_CLEAR_REG);

				return -ETIME;
			}
		}
		/* end waiting, now check if it timed out */
		if (t == ATMIO16D_TIMEOUT) {
			FUNC4("atmio16d: timeout\n");

			return -ETIME;
		}
	}

	return i;
}