#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {unsigned int filter_interval; int* filter_enable; TYPE_1__* mite; } ;
struct TYPE_5__ {unsigned int base_port; } ;
struct TYPE_4__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (unsigned int const) ; 
 scalar_t__ Filter_Interval ; 
 unsigned int INSN_CONFIG_FILTER ; 
 unsigned int const ni_65xx_channels_per_port ; 
 unsigned int FUNC2 (unsigned int const) ; 
 TYPE_3__* FUNC3 (struct comedi_device*) ; 
 TYPE_2__* FUNC4 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	const unsigned chan = FUNC0(insn->chanspec);
	const unsigned port =
	    FUNC4(s)->base_port + FUNC2(chan);

	if (data[0] != INSN_CONFIG_FILTER)
		return -EINVAL;
	if (data[1]) {
		static const unsigned filter_resolution_ns = 200;
		static const unsigned max_filter_interval = 0xfffff;
		unsigned interval =
		    (data[1] +
		     (filter_resolution_ns / 2)) / filter_resolution_ns;
		if (interval > max_filter_interval)
			interval = max_filter_interval;
		data[1] = interval * filter_resolution_ns;

		if (interval != FUNC3(dev)->filter_interval) {
			FUNC5(interval,
			       FUNC3(dev)->mite->daq_io_addr +
			       Filter_Interval);
			FUNC3(dev)->filter_interval = interval;
		}

		FUNC3(dev)->filter_enable[port] |=
		    1 << (chan % ni_65xx_channels_per_port);
	} else {
		FUNC3(dev)->filter_enable[port] &=
		    ~(1 << (chan % ni_65xx_channels_per_port));
	}

	FUNC5(FUNC3(dev)->filter_enable[port],
	       FUNC3(dev)->mite->daq_io_addr + FUNC1(port));

	return 2;
}