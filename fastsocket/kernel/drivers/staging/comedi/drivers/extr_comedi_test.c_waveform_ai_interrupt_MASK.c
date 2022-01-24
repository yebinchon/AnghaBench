#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; unsigned long tv_usec; } ;
struct comedi_device {TYPE_2__* read_subdev; } ;
struct comedi_cmd {unsigned int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_5__ {struct comedi_async* async; } ;
struct TYPE_4__ {unsigned long usec_remainder; unsigned long scan_period; unsigned int usec_current; unsigned int convert_period; scalar_t__ ai_count; unsigned long usec_period; int /*<<< orphan*/  timer; scalar_t__ timer_running; struct timeval last; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct comedi_device *dev = (struct comedi_device *)arg;
	struct comedi_async *async = dev->read_subdev->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int i, j;
	/* all times in microsec */
	unsigned long elapsed_time;
	unsigned int num_scans;
	struct timeval now;

	FUNC5(&now);

	elapsed_time =
	    1000000 * (now.tv_sec - devpriv->last.tv_sec) + now.tv_usec -
	    devpriv->last.tv_usec;
	devpriv->last = now;
	num_scans =
	    (devpriv->usec_remainder + elapsed_time) / devpriv->scan_period;
	devpriv->usec_remainder =
	    (devpriv->usec_remainder + elapsed_time) % devpriv->scan_period;
	async->events = 0;

	for (i = 0; i < num_scans; i++) {
		for (j = 0; j < cmd->chanlist_len; j++) {
			FUNC2(dev->read_subdev,
					    FUNC6(dev,
							  FUNC0(cmd->
								  chanlist[j]),
							  FUNC1(cmd->
								   chanlist[j]),
							  devpriv->
							  usec_current +
							  i *
							  devpriv->scan_period +
							  j *
							  devpriv->
							  convert_period));
		}
		devpriv->ai_count++;
		if (cmd->stop_src == TRIG_COUNT
		    && devpriv->ai_count >= cmd->stop_arg) {
			async->events |= COMEDI_CB_EOA;
			break;
		}
	}

	devpriv->usec_current += elapsed_time;
	devpriv->usec_current %= devpriv->usec_period;

	if ((async->events & COMEDI_CB_EOA) == 0 && devpriv->timer_running)
		FUNC7(&devpriv->timer, jiffies + 1);
	else
		FUNC4(&devpriv->timer);

	FUNC3(dev, dev->read_subdev);
}