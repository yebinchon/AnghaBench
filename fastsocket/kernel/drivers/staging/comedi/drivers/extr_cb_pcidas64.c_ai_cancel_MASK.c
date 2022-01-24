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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {scalar_t__ ai_cmd_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 TYPE_1__* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s)
{
	unsigned long flags;

	FUNC4(&dev->spinlock, flags);
	if (FUNC3(dev)->ai_cmd_running == 0) {
		FUNC5(&dev->spinlock, flags);
		return 0;
	}
	FUNC3(dev)->ai_cmd_running = 0;
	FUNC5(&dev->spinlock, flags);

	FUNC2(dev);

	FUNC1(dev, 1);

	FUNC0("ai canceled\n");
	return 0;
}