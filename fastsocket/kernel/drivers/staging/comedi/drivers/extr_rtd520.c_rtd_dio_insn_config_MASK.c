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
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int COMEDI_INPUT ; 
 unsigned int COMEDI_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
#define  INSN_CONFIG_DIO_INPUT 130 
#define  INSN_CONFIG_DIO_OUTPUT 129 
#define  INSN_CONFIG_DIO_QUERY 128 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int chan = FUNC0(insn->chanspec);

	/* The input or output configuration of each digital line is
	 * configured by a special insn_config instruction.  chanspec
	 * contains the channel to be changed, and data[0] contains the
	 * value COMEDI_INPUT or COMEDI_OUTPUT. */
	switch (data[0]) {
	case INSN_CONFIG_DIO_OUTPUT:
		s->io_bits |= 1 << chan;	/* 1 means Out */
		break;
	case INSN_CONFIG_DIO_INPUT:
		s->io_bits &= ~(1 << chan);
		break;
	case INSN_CONFIG_DIO_QUERY:
		data[1] =
		    (s->io_bits & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
		return insn->n;
		break;
	default:
		return -EINVAL;
	}

	FUNC1("rtd520: port_0_direction=0x%x (1 means out)\n", s->io_bits);
	/* TODO support digital match interrupts and strobes */
	FUNC3(dev, 0x01);	/* make Dio0Ctrl point to direction */
	FUNC2(dev, s->io_bits);	/* set direction 1 means Out */
	FUNC3(dev, 0);	/* make Dio0Ctrl clear interrupts */

	/* port1 can only be all input or all output */

	/* there are also 2 user input lines and 2 user output lines */

	return 1;
}