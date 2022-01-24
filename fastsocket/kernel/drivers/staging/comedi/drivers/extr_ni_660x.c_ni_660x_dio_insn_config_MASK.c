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
typedef  int uint64_t ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int pfi_direction_bits; int /*<<< orphan*/ * pfi_output_selects; } ;

/* Variables and functions */
 unsigned int COMEDI_INPUT ; 
 unsigned int COMEDI_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  INSN_CONFIG_DIO_INPUT 133 
#define  INSN_CONFIG_DIO_OUTPUT 132 
#define  INSN_CONFIG_DIO_QUERY 131 
#define  INSN_CONFIG_FILTER 130 
#define  INSN_CONFIG_GET_ROUTING 129 
#define  INSN_CONFIG_SET_ROUTING 128 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct comedi_device*,int,unsigned int) ; 
 int /*<<< orphan*/  pfi_output_select_high_Z ; 
 TYPE_1__* FUNC5 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
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
		FUNC5(dev)->pfi_direction_bits |= ((uint64_t) 1) << chan;
		FUNC3(dev, chan,
					  FUNC5(dev)->
					  pfi_output_selects[chan]);
		break;
	case INSN_CONFIG_DIO_INPUT:
		FUNC5(dev)->pfi_direction_bits &= ~(((uint64_t) 1) << chan);
		FUNC3(dev, chan, pfi_output_select_high_Z);
		break;
	case INSN_CONFIG_DIO_QUERY:
		data[1] =
		    (FUNC5(dev)->pfi_direction_bits &
		     (((uint64_t) 1) << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
		return 0;
	case INSN_CONFIG_SET_ROUTING:
		return FUNC4(dev, chan, data[1]);
		break;
	case INSN_CONFIG_GET_ROUTING:
		data[1] = FUNC2(dev, chan);
		break;
	case INSN_CONFIG_FILTER:
		FUNC1(dev, chan, data[1]);
		break;
	default:
		return -EINVAL;
		break;
	};
	return 0;
}