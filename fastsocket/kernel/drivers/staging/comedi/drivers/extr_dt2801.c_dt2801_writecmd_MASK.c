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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ DT2801_CMD ; 
 scalar_t__ DT2801_STATUS ; 
 int DT_S_COMPOSITE_ERROR ; 
 int DT_S_READY ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, int command)
{
	int stat;

	FUNC0(dev);

	stat = FUNC1(dev->iobase + DT2801_STATUS);
	if (stat & DT_S_COMPOSITE_ERROR) {
		FUNC3
		    ("dt2801: composite-error in dt2801_writecmd(), ignoring\n");
	}
	if (!(stat & DT_S_READY)) {
		FUNC3("dt2801: !ready in dt2801_writecmd(), ignoring\n");
	}
	FUNC2(command, dev->iobase + DT2801_CMD);

	return 0;
}