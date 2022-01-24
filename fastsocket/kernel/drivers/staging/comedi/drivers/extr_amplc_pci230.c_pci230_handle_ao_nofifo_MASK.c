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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {scalar_t__ ao_scan_count; int /*<<< orphan*/  ao_continuous; } ;

/* Variables and functions */
 int COMEDI_CB_BLOCK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_EOS ; 
 int COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct comedi_async*,short*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				    struct comedi_subdevice *s)
{
	short data;
	int i, ret;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;

	if (!devpriv->ao_continuous && (devpriv->ao_scan_count == 0)) {
		return;
	}

	for (i = 0; i < cmd->chanlist_len; i++) {
		/* Read sample from Comedi's circular buffer. */
		ret = FUNC1(s->async, &data);
		if (ret == 0) {
			s->async->events |= COMEDI_CB_OVERFLOW;
			FUNC3(dev, s);
			FUNC2(dev, "AO buffer underrun");
			return;
		}
		/* Write value to DAC. */
		FUNC4(dev, data, FUNC0(cmd->chanlist[i]));
	}

	async->events |= COMEDI_CB_BLOCK | COMEDI_CB_EOS;
	if (!devpriv->ao_continuous) {
		devpriv->ao_scan_count--;
		if (devpriv->ao_scan_count == 0) {
			/* End of acquisition. */
			async->events |= COMEDI_CB_EOA;
			FUNC3(dev, s);
		}
	}
}