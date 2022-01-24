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
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
typedef  int s16 ;
struct TYPE_4__ {int /*<<< orphan*/  cur_chan; } ;
struct TYPE_3__ {scalar_t__ aiCount; int /*<<< orphan*/  chanBipolar; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FS_ADC_NOT_EMPTY ; 
 int FUNC2 (struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,short) ; 
 TYPE_1__* devpriv ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
		     int count)
{
	int ii;

	for (ii = 0; ii < count; ii++) {
		short sample;
		s16 d;

		if (0 == devpriv->aiCount) {	/* done */
			d = FUNC2(dev);	/* Read N and discard */
			continue;
		}
#if 0
		if (0 == (RtdFifoStatus(dev) & FS_ADC_NOT_EMPTY)) {	/* DEBUG */
			DPRINTK("comedi: READ OOPS on %d of %d\n", ii + 1,
				count);
			break;
		}
#endif
		d = FUNC2(dev);	/* get 2s comp value */

		d = d >> 3;	/* low 3 bits are marker lines */
		if (FUNC0(devpriv->chanBipolar, s->async->cur_chan)) {
			sample = d + 2048;	/* convert to comedi unsigned data */
		} else {
			sample = d;
		}
		if (!FUNC4(s->async, sample))
			return -1;

		if (devpriv->aiCount > 0)	/* < 0, means read forever */
			devpriv->aiCount--;
	}
	return 0;
}