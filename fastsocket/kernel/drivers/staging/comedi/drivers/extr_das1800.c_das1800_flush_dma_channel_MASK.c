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
typedef  int /*<<< orphan*/  uint16_t ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_4__ {unsigned int dma_transfer_size; unsigned int count; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      unsigned int channel, uint16_t * buffer)
{
	unsigned int num_bytes, num_samples;
	struct comedi_cmd *cmd = &s->async->cmd;

	FUNC2(channel);

	/* clear flip-flop to make sure 2-byte registers
	 * get set correctly */
	FUNC1(channel);

	/*  figure out how many points to read */
	num_bytes = devpriv->dma_transfer_size - FUNC3(channel);
	num_samples = num_bytes / sizeof(short);

	/* if we only need some of the points */
	if (cmd->stop_src == TRIG_COUNT && devpriv->count < num_samples)
		num_samples = devpriv->count;

	FUNC4(dev, buffer, num_samples);
	FUNC0(s, buffer, num_bytes);
	if (s->async->cmd.stop_src == TRIG_COUNT)
		devpriv->count -= num_samples;

	return;
}