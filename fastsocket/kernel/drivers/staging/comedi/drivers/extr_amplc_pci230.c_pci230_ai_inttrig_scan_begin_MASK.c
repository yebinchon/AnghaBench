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
struct TYPE_2__ {int /*<<< orphan*/  ai_stop_spinlock; scalar_t__ iobase1; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CMD_STARTED ; 
 int EINVAL ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GAT_GND ; 
 int /*<<< orphan*/  GAT_VCC ; 
 scalar_t__ PCI230_ZGAT_SCE ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
					struct comedi_subdevice *s,
					unsigned int trig_num)
{
	unsigned long irqflags;
	unsigned char zgat;

	if (trig_num != 0)
		return -EINVAL;

	FUNC2(&devpriv->ai_stop_spinlock, irqflags);
	if (FUNC4(AI_CMD_STARTED, &devpriv->state)) {
		/* Trigger scan by waggling CT0 gate source. */
		zgat = FUNC0(0, GAT_GND);
		FUNC1(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
		zgat = FUNC0(0, GAT_VCC);
		FUNC1(zgat, devpriv->iobase1 + PCI230_ZGAT_SCE);
	}
	FUNC3(&devpriv->ai_stop_spinlock, irqflags);

	return 1;
}