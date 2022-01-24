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
struct wm831x {int locked; int /*<<< orphan*/  dev; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WM831X_SECURITY_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct wm831x *wm831x)
{
	int ret;

	ret = FUNC5(wm831x, WM831X_SECURITY_KEY, 0);
	if (ret == 0) {
		FUNC2(wm831x->dev, "Registers locked\n");

		FUNC3(&wm831x->io_lock);
		FUNC0(wm831x->locked);
		wm831x->locked = 1;
		FUNC4(&wm831x->io_lock);
	} else {
		FUNC1(wm831x->dev, "Failed to lock registers: %d\n", ret);
	}

}