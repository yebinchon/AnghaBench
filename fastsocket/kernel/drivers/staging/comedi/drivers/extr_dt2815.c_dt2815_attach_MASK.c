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
struct dt2815_private {int dummy; } ;
struct comedi_subdevice {int maxdata; int n_chan; struct comedi_lrange const** range_table_list; int /*<<< orphan*/  insn_read; int /*<<< orphan*/  insn_write; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  type; } ;
struct comedi_lrange {int dummy; } ;
struct comedi_device {unsigned long iobase; char* board_name; struct comedi_subdevice* subdevices; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_2__ {struct comedi_lrange const** range_type_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 unsigned long DT2815_DATA ; 
 int /*<<< orphan*/  DT2815_SIZE ; 
 unsigned long DT2815_STATUS ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 scalar_t__ FUNC0 (struct comedi_device*,int) ; 
 scalar_t__ FUNC1 (struct comedi_device*,int) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  dt2815_ao_insn ; 
 int /*<<< orphan*/  dt2815_ao_insn_read ; 
 unsigned int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct comedi_lrange range_bipolar5 ; 
 struct comedi_lrange range_dt2815_ao_20_current ; 
 struct comedi_lrange range_dt2815_ao_32_current ; 
 struct comedi_lrange range_unipolar5 ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct comedi_subdevice *s;
	int i;
	const struct comedi_lrange *current_range_type, *voltage_range_type;
	unsigned long iobase;

	iobase = it->options[0];
	FUNC4("comedi%d: dt2815: 0x%04lx ", dev->minor, iobase);
	if (!FUNC5(iobase, DT2815_SIZE, "dt2815")) {
		FUNC4("I/O port conflict\n");
		return -EIO;
	}

	dev->iobase = iobase;
	dev->board_name = "dt2815";

	if (FUNC1(dev, 1) < 0)
		return -ENOMEM;
	if (FUNC0(dev, sizeof(struct dt2815_private)) < 0)
		return -ENOMEM;

	s = dev->subdevices;
	/* ao subdevice */
	s->type = COMEDI_SUBD_AO;
	s->subdev_flags = SDF_WRITABLE;
	s->maxdata = 0xfff;
	s->n_chan = 8;
	s->insn_write = dt2815_ao_insn;
	s->insn_read = dt2815_ao_insn_read;
	s->range_table_list = devpriv->range_type_list;

	current_range_type = (it->options[3])
	    ? &range_dt2815_ao_20_current : &range_dt2815_ao_32_current;
	voltage_range_type = (it->options[2])
	    ? &range_bipolar5 : &range_unipolar5;
	for (i = 0; i < 8; i++) {
		devpriv->range_type_list[i] = (it->options[5 + i])
		    ? current_range_type : voltage_range_type;
	}

	/* Init the 2815 */
	FUNC3(0x00, dev->iobase + DT2815_STATUS);
	for (i = 0; i < 100; i++) {
		/* This is incredibly slow (approx 20 ms) */
		unsigned int status;

		FUNC6(1000);
		status = FUNC2(dev->iobase + DT2815_STATUS);
		if (status == 4) {
			unsigned int program;
			program = (it->options[4] & 0x3) << 3 | 0x7;
			FUNC3(program, dev->iobase + DT2815_DATA);
			FUNC4(", program: 0x%x (@t=%d)\n", program, i);
			break;
		} else if (status != 0x00) {
			FUNC4("dt2815: unexpected status 0x%x (@t=%d)\n",
			       status, i);
			if (status & 0x60) {
				FUNC3(0x00, dev->iobase + DT2815_STATUS);
			}
		}
	}

	FUNC4("\n");

	return 0;
}