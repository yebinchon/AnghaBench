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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int clockbase; } ;

/* Variables and functions */
 int DAS1600_CLK_10MHZ ; 
 scalar_t__ DAS1600_STATUS_B ; 
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	int status = 0;

	status = FUNC0(dev->iobase + DAS1600_STATUS_B);

	if (status & DAS1600_CLK_10MHZ) {
		devpriv->clockbase = 100;
		FUNC1(" 10MHz pacer clock\n");
	} else {
		devpriv->clockbase = 1000;
		FUNC1(" 1MHz pacer clock\n");
	}

	FUNC2(dev);

	return 0;
}