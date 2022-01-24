#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  sem; TYPE_3__* class; TYPE_2__* type; TYPE_1__* bus; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_6__ {int (* resume ) (struct device*) ;scalar_t__ pm; } ;
struct TYPE_5__ {scalar_t__ pm; } ;
struct TYPE_4__ {int (* resume ) (struct device*) ;scalar_t__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct device *dev, pm_message_t state)
{
	int error = 0;

	FUNC0(dev);
	FUNC1(0);

	FUNC2(&dev->sem);

	if (dev->bus) {
		if (dev->bus->pm) {
			FUNC3(dev, state, "");
			error = FUNC4(dev, dev->bus->pm, state);
		} else if (dev->bus->resume) {
			FUNC3(dev, state, "legacy ");
			error = dev->bus->resume(dev);
		}
		if (error)
			goto End;
	}

	if (dev->type) {
		if (dev->type->pm) {
			FUNC3(dev, state, "type ");
			error = FUNC4(dev, dev->type->pm, state);
		}
		if (error)
			goto End;
	}

	if (dev->class) {
		if (dev->class->pm) {
			FUNC3(dev, state, "class ");
			error = FUNC4(dev, dev->class->pm, state);
		} else if (dev->class->resume) {
			FUNC3(dev, state, "legacy class ");
			error = dev->class->resume(dev);
		}
	}
 End:
	FUNC7(&dev->sem);

	FUNC1(error);
	return error;
}