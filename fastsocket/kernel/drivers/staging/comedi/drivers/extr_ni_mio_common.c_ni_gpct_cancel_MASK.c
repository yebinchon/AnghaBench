#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ni_gpct {int /*<<< orphan*/  counter_index; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ni_gpct*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s)
{
#ifdef PCIDMA
	struct ni_gpct *counter = s->private;
	int retval;

	retval = ni_tio_cancel(counter);
	ni_e_series_enable_second_irq(dev, counter->counter_index, 0);
	ni_release_gpct_mite_channel(dev, counter->counter_index);
	return retval;
#else
	return 0;
#endif
}