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
struct TYPE_2__ {scalar_t__ hpdi_iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOARD_CONTROL_REG ; 
 scalar_t__ INTERRUPT_CONTROL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	FUNC1(dev, 0, BOARD_CONTROL_REG);

	FUNC3(0, FUNC2(dev)->hpdi_iobase + INTERRUPT_CONTROL_REG);

	FUNC0(dev, 0);

	return 0;
}