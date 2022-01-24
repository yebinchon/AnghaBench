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
struct device {TYPE_1__* bus; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {scalar_t__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, pm_message_t state)
{
	int error = 0;

	FUNC0(dev);
	FUNC1(0);

	if (!dev->bus)
		goto End;

	if (dev->bus->pm) {
		FUNC2(dev, state, "EARLY ");
		error = FUNC3(dev, dev->bus->pm, state);
	}
 End:
	FUNC1(error);
	return error;
}