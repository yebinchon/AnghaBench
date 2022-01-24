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
struct comedi_subdevice {int n_chan; int subdev_flags; int maxdata; scalar_t__ state; int /*<<< orphan*/  insn_config; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned long iobase; char* board_name; struct comedi_subdevice* subdevices; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {unsigned long* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DIO ; 
 scalar_t__ DT2817_CR ; 
 int /*<<< orphan*/  DT2817_SIZE ; 
 int EIO ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  dt2817_dio_insn_bits ; 
 int /*<<< orphan*/  dt2817_dio_insn_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  range_digital ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_devconfig *it)
{
	int ret;
	struct comedi_subdevice *s;
	unsigned long iobase;

	iobase = it->options[0];
	FUNC2("comedi%d: dt2817: 0x%04lx ", dev->minor, iobase);
	if (!FUNC3(iobase, DT2817_SIZE, "dt2817")) {
		FUNC2("I/O port conflict\n");
		return -EIO;
	}
	dev->iobase = iobase;
	dev->board_name = "dt2817";

	ret = FUNC0(dev, 1);
	if (ret < 0)
		return ret;

	s = dev->subdevices + 0;

	s->n_chan = 32;
	s->type = COMEDI_SUBD_DIO;
	s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
	s->range_table = &range_digital;
	s->maxdata = 1;
	s->insn_bits = dt2817_dio_insn_bits;
	s->insn_config = dt2817_dio_insn_config;

	s->state = 0;
	FUNC1(0, dev->iobase + DT2817_CR);

	FUNC2("\n");

	return 0;
}