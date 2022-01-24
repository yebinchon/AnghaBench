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
struct comedi_subdevice {int /*<<< orphan*/  async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  interrupt_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  mite_chan; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC5 (struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	unsigned long flags;
	/* lock to avoid race with comedi_poll */
	FUNC3(&FUNC2(dev)->interrupt_lock, flags);
	FUNC1(FUNC5(s)->mite_chan, s->async);
	FUNC4(&FUNC2(dev)->interrupt_lock, flags);
	return FUNC0(s->async);
}