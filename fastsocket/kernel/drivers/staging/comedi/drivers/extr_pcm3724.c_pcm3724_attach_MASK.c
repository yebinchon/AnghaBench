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
struct priv_pcm3724 {scalar_t__ dio_2; scalar_t__ dio_1; } ;
struct comedi_device {unsigned long iobase; int n_subdevices; TYPE_2__* subdevices; int /*<<< orphan*/  board_name; int /*<<< orphan*/  minor; scalar_t__ private; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_4__ {int /*<<< orphan*/  insn_config; } ;
struct TYPE_3__ {unsigned int io_range; int numofports; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int SIZE_8255 ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned int,char*) ; 
 int /*<<< orphan*/  subdev_3724_insn_config ; 
 int /*<<< orphan*/  subdev_8255_cb ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			  struct comedi_devconfig *it)
{
	unsigned long iobase;
	unsigned int iorange;
	int ret, i, n_subdevices;

	iobase = it->options[0];
	iorange = this_board->io_range;

	ret = FUNC0(dev, sizeof(struct priv_pcm3724));
	if (ret < 0)
		return -ENOMEM;

	((struct priv_pcm3724 *)(dev->private))->dio_1 = 0;
	((struct priv_pcm3724 *)(dev->private))->dio_2 = 0;

	FUNC2("comedi%d: pcm3724: board=%s, 0x%03lx ", dev->minor,
	       this_board->name, iobase);
	if (!iobase || !FUNC3(iobase, iorange, "pcm3724")) {
		FUNC2("I/O port conflict\n");
		return -EIO;
	}

	dev->iobase = iobase;
	dev->board_name = this_board->name;
	FUNC2("\n");

	n_subdevices = this_board->numofports;

	ret = FUNC1(dev, n_subdevices);
	if (ret < 0)
		return ret;

	for (i = 0; i < dev->n_subdevices; i++) {
		FUNC4(dev, dev->subdevices + i, subdev_8255_cb,
				 (unsigned long)(dev->iobase + SIZE_8255 * i));
		((dev->subdevices) + i)->insn_config = subdev_3724_insn_config;
	};
	return 0;
}