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
struct comedi_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  chan_timer_reg; int /*<<< orphan*/  chan_pre_timer_reg; int /*<<< orphan*/  scan_timer_high_reg; int /*<<< orphan*/  scan_timer_low_reg; int /*<<< orphan*/  scan_pre_timer_high_reg; int /*<<< orphan*/  scan_pre_timer_low_reg; } ;
struct TYPE_4__ {TYPE_1__ ai_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* info ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
			   unsigned int init_ticks,
			   unsigned int scan_ticks, unsigned int chan_ticks)
{

	FUNC0("In ai_write_timer()\n");

	FUNC1(dev, init_ticks - 1,
		    info->ai_context.scan_pre_timer_low_reg);
	FUNC1(dev, 0x0, info->ai_context.scan_pre_timer_high_reg);

	if (scan_ticks) {
		FUNC1(dev, scan_ticks - 1,
			    info->ai_context.scan_timer_low_reg);
		FUNC1(dev, 0x0, info->ai_context.scan_timer_high_reg);
	}

	FUNC1(dev, chan_ticks - 1, info->ai_context.chan_pre_timer_reg);
	FUNC1(dev, chan_ticks - 1, info->ai_context.chan_timer_reg);
}