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
struct comedi_cmd {scalar_t__ start_src; } ;
struct TYPE_4__ {scalar_t__ main_iobase; } ;
struct TYPE_3__ {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ DAC_START_REG ; 
 int EINVAL ; 
 int EPIPE ; 
 scalar_t__ TRIG_INT ; 
 int FUNC0 (struct comedi_device*,struct comedi_cmd*) ; 
 TYPE_2__* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s,
		      unsigned int trig_num)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	int retval;

	if (trig_num != 0)
		return -EINVAL;

	retval = FUNC0(dev, cmd);
	if (retval < 0)
		return -EPIPE;

	FUNC2(dev, cmd);

	if (cmd->start_src == TRIG_INT)
		FUNC3(0, FUNC1(dev)->main_iobase + DAC_START_REG);

	s->async->inttrig = NULL;

	return 0;
}