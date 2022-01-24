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
struct skel_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int /*<<< orphan*/  insn_read; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned long iobase; char* board_name; struct comedi_subdevice* subdevices; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_2__ {void* ulConvertionRate; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AI ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MPC624_SIZE ; 
 void* MPC624_SPEED_110_Hz ; 
 void* MPC624_SPEED_13_75_Hz ; 
 void* MPC624_SPEED_1_76_kHz ; 
 void* MPC624_SPEED_220_Hz ; 
 void* MPC624_SPEED_27_5_Hz ; 
 void* MPC624_SPEED_3_52_kHz ; 
 void* MPC624_SPEED_440_Hz ; 
 void* MPC624_SPEED_55_Hz ; 
 void* MPC624_SPEED_6_875_Hz ; 
 void* MPC624_SPEED_880_Hz ; 
 int SDF_DIFF ; 
 int SDF_READABLE ; 
 scalar_t__ FUNC0 (struct comedi_device*,int) ; 
 scalar_t__ FUNC1 (struct comedi_device*,int) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  mpc624_ai_rinsn ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  range_mpc624_bipolar1 ; 
 int /*<<< orphan*/  range_mpc624_bipolar10 ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct comedi_subdevice *s;
	unsigned long iobase;

	iobase = it->options[0];
	FUNC2("comedi%d: mpc624 [0x%04lx, ", dev->minor, iobase);
	if (FUNC3(iobase, MPC624_SIZE, "mpc624") == NULL) {
		FUNC2("I/O port(s) in use\n");
		return -EIO;
	}

	dev->iobase = iobase;
	dev->board_name = "mpc624";

	/*  Private structure initialization */
	if (FUNC0(dev, sizeof(struct skel_private)) < 0)
		return -ENOMEM;

	switch (it->options[1]) {
	case 0:
		devpriv->ulConvertionRate = MPC624_SPEED_3_52_kHz;
		FUNC2("3.52 kHz, ");
		break;
	case 1:
		devpriv->ulConvertionRate = MPC624_SPEED_1_76_kHz;
		FUNC2("1.76 kHz, ");
		break;
	case 2:
		devpriv->ulConvertionRate = MPC624_SPEED_880_Hz;
		FUNC2("880 Hz, ");
		break;
	case 3:
		devpriv->ulConvertionRate = MPC624_SPEED_440_Hz;
		FUNC2("440 Hz, ");
		break;
	case 4:
		devpriv->ulConvertionRate = MPC624_SPEED_220_Hz;
		FUNC2("220 Hz, ");
		break;
	case 5:
		devpriv->ulConvertionRate = MPC624_SPEED_110_Hz;
		FUNC2("110 Hz, ");
		break;
	case 6:
		devpriv->ulConvertionRate = MPC624_SPEED_55_Hz;
		FUNC2("55 Hz, ");
		break;
	case 7:
		devpriv->ulConvertionRate = MPC624_SPEED_27_5_Hz;
		FUNC2("27.5 Hz, ");
		break;
	case 8:
		devpriv->ulConvertionRate = MPC624_SPEED_13_75_Hz;
		FUNC2("13.75 Hz, ");
		break;
	case 9:
		devpriv->ulConvertionRate = MPC624_SPEED_6_875_Hz;
		FUNC2("6.875 Hz, ");
		break;
	default:
		FUNC2
		    ("illegal convertion rate setting! Valid numbers are 0..9. Using 9 => 6.875 Hz, ");
		devpriv->ulConvertionRate = MPC624_SPEED_3_52_kHz;
	}

	/*  Subdevices structures */
	if (FUNC1(dev, 1) < 0)
		return -ENOMEM;

	s = dev->subdevices + 0;
	s->type = COMEDI_SUBD_AI;
	s->subdev_flags = SDF_READABLE | SDF_DIFF;
	s->n_chan = 8;
	switch (it->options[1]) {
	default:
		s->maxdata = 0x3FFFFFFF;
		FUNC2("30 bit, ");
	}

	switch (it->options[1]) {
	case 0:
		s->range_table = &range_mpc624_bipolar1;
		FUNC2("1.01V]: ");
		break;
	default:
		s->range_table = &range_mpc624_bipolar10;
		FUNC2("10.1V]: ");
	}
	s->len_chanlist = 1;
	s->insn_read = mpc624_ai_rinsn;

	FUNC2("attached\n");

	return 1;
}