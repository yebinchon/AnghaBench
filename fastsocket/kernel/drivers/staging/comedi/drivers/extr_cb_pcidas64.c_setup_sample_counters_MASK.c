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
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; int chanlist_len; } ;
struct TYPE_2__ {int ai_count; scalar_t__ main_iobase; } ;

/* Variables and functions */
 scalar_t__ ADC_COUNT_LOWER_REG ; 
 scalar_t__ ADC_COUNT_UPPER_REG ; 
 scalar_t__ TRIG_COUNT ; 
 TYPE_1__* FUNC0 (struct comedi_device*) ; 
 scalar_t__ FUNC1 (struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
				  struct comedi_cmd *cmd)
{
	if (cmd->stop_src == TRIG_COUNT) {
		/*  set software count */
		FUNC0(dev)->ai_count = cmd->stop_arg * cmd->chanlist_len;
	}
	/*  load hardware conversion counter */
	if (FUNC1(cmd)) {
		FUNC2(cmd->stop_arg & 0xffff,
		       FUNC0(dev)->main_iobase + ADC_COUNT_LOWER_REG);
		FUNC2((cmd->stop_arg >> 16) & 0xff,
		       FUNC0(dev)->main_iobase + ADC_COUNT_UPPER_REG);
	} else {
		FUNC2(1, FUNC0(dev)->main_iobase + ADC_COUNT_LOWER_REG);
	}
}