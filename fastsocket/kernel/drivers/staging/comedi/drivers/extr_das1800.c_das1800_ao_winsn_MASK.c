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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
struct TYPE_4__ {short ao_update_bits; } ;
struct TYPE_3__ {int ao_n_chan; int resolution; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DAS1800_DAC ; 
 scalar_t__ DAS1800_SELECT ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn, unsigned int *data)
{
	int chan = FUNC0(insn->chanspec);
/* int range = CR_RANGE(insn->chanspec); */
	int update_chan = thisboard->ao_n_chan - 1;
	short output;
	unsigned long irq_flags;

	/*   card expects two's complement data */
	output = data[0] - (1 << (thisboard->resolution - 1));
	/*  if the write is to the 'update' channel, we need to remember its value */
	if (chan == update_chan)
		devpriv->ao_update_bits = output;
	/*  write to channel */
	FUNC4(&dev->spinlock, irq_flags);
	FUNC2(FUNC1(chan), dev->iobase + DAS1800_SELECT);	/* select dac channel for baseAddress + 0x0 */
	FUNC3(output, dev->iobase + DAS1800_DAC);
	/*  now we need to write to 'update' channel to update all dac channels */
	if (chan != update_chan) {
		FUNC2(FUNC1(update_chan), dev->iobase + DAS1800_SELECT);	/* select 'update' channel for baseAddress + 0x0 */
		FUNC3(devpriv->ao_update_bits, dev->iobase + DAS1800_DAC);
	}
	FUNC5(&dev->spinlock, irq_flags);

	return 1;
}