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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READCODE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ DPR_SubSys ; 
 int SUBS_MEM ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn, unsigned int *data)
{
	unsigned int addr = FUNC0(insn->chanspec);
	int i;

	for (i = 0; i < insn->n; i++) {
		FUNC4(SUBS_MEM, devpriv->io_addr + DPR_SubSys);
		FUNC4(addr, devpriv->io_addr + FUNC1(0));
		FUNC4(1, devpriv->io_addr + FUNC1(1));

		FUNC2(dev, CMD_READCODE);

		data[i] = FUNC3(devpriv->io_addr + FUNC1(2));
	}

	return i;
}