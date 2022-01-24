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
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int INSN_CONFIG_CHANGE_NOTIFY ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				    struct comedi_subdevice *s,
				    struct comedi_insn *insn,
				    unsigned int *data)
{
	if (insn->n < 1)
		return -EINVAL;
	if (data[0] != INSN_CONFIG_CHANGE_NOTIFY)
		return -EINVAL;

	FUNC3(data[1],
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC1(0));
	FUNC3(data[1] >> 8,
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC1(0x10));
	FUNC3(data[1] >> 16,
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC1(0x20));
	FUNC3(data[1] >> 24,
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC1(0x30));

	FUNC3(data[2],
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC0(0));
	FUNC3(data[2] >> 8,
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC0(0x10));
	FUNC3(data[2] >> 16,
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC0(0x20));
	FUNC3(data[2] >> 24,
	       FUNC2(dev)->mite->daq_io_addr +
	       FUNC0(0x30));

	return 2;
}