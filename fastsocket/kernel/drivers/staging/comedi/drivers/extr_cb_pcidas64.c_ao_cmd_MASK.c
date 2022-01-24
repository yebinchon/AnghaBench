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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int stop_arg; int chanlist_len; } ;
struct TYPE_4__ {int ao_count; int ao_dma_desc_bus_addr; scalar_t__ ao_dma_index; scalar_t__ main_iobase; } ;
struct TYPE_3__ {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ DAC_CONTROL0_REG ; 
 int EBUSY ; 
 int PLX_DESC_IN_PCI_BIT ; 
 int PLX_INTR_TERM_COUNT ; 
 int /*<<< orphan*/  ao_inttrig ; 
 scalar_t__ FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;

	if (FUNC0(dev)) {
		FUNC6(dev);
		return -EBUSY;
	}
	/* disable analog output system during setup */
	FUNC7(0x0, FUNC2(dev)->main_iobase + DAC_CONTROL0_REG);

	FUNC2(dev)->ao_dma_index = 0;
	FUNC2(dev)->ao_count = cmd->stop_arg * cmd->chanlist_len;

	FUNC5(dev, cmd);
	FUNC4(dev, cmd);
	FUNC1(dev, 0, FUNC2(dev)->ao_dma_desc_bus_addr |
				  PLX_DESC_IN_PCI_BIT | PLX_INTR_TERM_COUNT);

	FUNC3(dev, cmd);
	s->async->inttrig = ao_inttrig;

	return 0;
}