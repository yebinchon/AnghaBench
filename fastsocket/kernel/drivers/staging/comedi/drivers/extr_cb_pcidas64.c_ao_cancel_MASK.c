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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ main_iobase; } ;

/* Variables and functions */
 scalar_t__ DAC_CONTROL0_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s)
{
	FUNC2(0x0, FUNC1(dev)->main_iobase + DAC_CONTROL0_REG);
	FUNC0(dev, 0);
	return 0;
}