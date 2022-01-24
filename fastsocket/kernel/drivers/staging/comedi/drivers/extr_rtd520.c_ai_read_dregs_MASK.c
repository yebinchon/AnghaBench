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
 int FS_ADC_NOT_EMPTY ; 
 int FUNC1 (struct comedi_device*) ; 
 int FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,short) ; 
 TYPE_1__* devpriv ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	while (FUNC2(dev) & FS_ADC_NOT_EMPTY) {	/* 1 -> not empty */
		short sample;
		s16 d = FUNC1(dev);	/* get 2s comp value */

		if (0 == devpriv->aiCount) {	/* done */
			continue;	/* read rest */
		}

		d = d >> 3;	/* low 3 bits are marker lines */
		if (FUNC0(devpriv->chanBipolar, s->async->cur_chan)) {
			sample = d + 2048;	/* convert to comedi unsigned data */
		} else {
			sample = d;
		}
		if (!FUNC3(s->async, sample))
			return -1;

		if (devpriv->aiCount > 0)	/* < 0, means read forever */
			devpriv->aiCount--;
	}
	return 0;
}