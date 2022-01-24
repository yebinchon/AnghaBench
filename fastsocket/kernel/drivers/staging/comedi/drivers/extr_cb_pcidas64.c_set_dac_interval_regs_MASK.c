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
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int /*<<< orphan*/  flags; int /*<<< orphan*/  scan_begin_arg; } ;
struct TYPE_2__ {scalar_t__ main_iobase; } ;

/* Variables and functions */
 scalar_t__ DAC_SAMPLE_INTERVAL_LOWER_REG ; 
 scalar_t__ DAC_SAMPLE_INTERVAL_UPPER_REG ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int max_counter_value ; 
 TYPE_1__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
				  const struct comedi_cmd *cmd)
{
	unsigned int divisor;

	if (cmd->scan_begin_src != TRIG_TIMER)
		return;

	divisor = FUNC1(cmd->scan_begin_arg, cmd->flags);
	if (divisor > max_counter_value) {
		FUNC0(dev, "bug! ao divisor too big");
		divisor = max_counter_value;
	}
	FUNC3(divisor & 0xffff,
	       FUNC2(dev)->main_iobase + DAC_SAMPLE_INTERVAL_LOWER_REG);
	FUNC3((divisor >> 16) & 0xff,
	       FUNC2(dev)->main_iobase + DAC_SAMPLE_INTERVAL_UPPER_REG);
}