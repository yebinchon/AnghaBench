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
struct TYPE_2__ {scalar_t__ io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WRITESINGLE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ DPR_SubSys ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, unsigned int subsys,
			     unsigned int chan, unsigned int data)
{
	FUNC2(subsys, devpriv->io_addr + DPR_SubSys);

	FUNC2(chan, devpriv->io_addr + FUNC0(0));
	FUNC2(0, devpriv->io_addr + FUNC0(1));
	FUNC2(data, devpriv->io_addr + FUNC0(2));

	FUNC1(dev, CMD_WRITESINGLE);
}