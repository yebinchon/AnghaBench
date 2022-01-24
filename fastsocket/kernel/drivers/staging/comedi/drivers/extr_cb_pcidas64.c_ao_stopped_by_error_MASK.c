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
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_2__ {scalar_t__ ao_count; } ;

/* Variables and functions */
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ TRIG_NONE ; 
 scalar_t__ FUNC0 (struct comedi_device*) ; 
 TYPE_1__* FUNC1 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			       const struct comedi_cmd *cmd)
{
	if (cmd->stop_src == TRIG_NONE)
		return 1;
	if (cmd->stop_src == TRIG_COUNT) {
		if (FUNC1(dev)->ao_count)
			return 1;
		if (FUNC0(dev) == 0)
			return 1;
	}
	return 0;
}