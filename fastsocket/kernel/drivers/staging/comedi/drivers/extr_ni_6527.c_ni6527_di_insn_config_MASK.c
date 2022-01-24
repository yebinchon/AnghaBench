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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int filter_interval; int filter_enable; TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ Clear_Register ; 
 int ClrInterval ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int INSN_CONFIG_FILTER ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	int chan = FUNC0(insn->chanspec);
	unsigned int interval;

	if (insn->n != 2)
		return -EINVAL;

	if (data[0] != INSN_CONFIG_FILTER)
		return -EINVAL;

	if (data[1]) {
		interval = (data[1] + 100) / 200;
		data[1] = interval * 200;

		if (interval != devpriv->filter_interval) {
			FUNC3(interval & 0xff,
			       devpriv->mite->daq_io_addr + FUNC2(0));
			FUNC3((interval >> 8) & 0xff,
			       devpriv->mite->daq_io_addr + FUNC2(1));
			FUNC3((interval >> 16) & 0x0f,
			       devpriv->mite->daq_io_addr + FUNC2(2));

			FUNC3(ClrInterval,
			       devpriv->mite->daq_io_addr + Clear_Register);

			devpriv->filter_interval = interval;
		}

		devpriv->filter_enable |= 1 << chan;
	} else {
		devpriv->filter_enable &= ~(1 << chan);
	}

	FUNC3(devpriv->filter_enable,
	       devpriv->mite->daq_io_addr + FUNC1(0));
	FUNC3(devpriv->filter_enable >> 8,
	       devpriv->mite->daq_io_addr + FUNC1(1));
	FUNC3(devpriv->filter_enable >> 16,
	       devpriv->mite->daq_io_addr + FUNC1(2));

	return 2;
}