#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_device {int last_context; int /*<<< orphan*/  context_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct drm_device * dev, int old, int new)
{
	if (FUNC3(0, &dev->context_flag)) {
		FUNC1("Reentering -- FIXME\n");
		return -EBUSY;
	}

	FUNC0("Context switch from %d to %d\n", old, new);

	if (new == dev->last_context) {
		FUNC2(0, &dev->context_flag);
		return 0;
	}

	return 0;
}