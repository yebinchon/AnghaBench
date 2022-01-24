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
struct TYPE_2__ {scalar_t__ scan1; scalar_t__ scan2; } ;
struct saa7134_dev {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct saa7134_dev *dev, int timeout)
{
	if (dev->thread.scan1 == dev->thread.scan2 &&
	    !FUNC0()) {
		if (timeout < 0) {
			FUNC4(TASK_INTERRUPTIBLE);
			FUNC2();
		} else {
			FUNC3
						(FUNC1(timeout));
		}
	}
	return dev->thread.scan1 != dev->thread.scan2;
}