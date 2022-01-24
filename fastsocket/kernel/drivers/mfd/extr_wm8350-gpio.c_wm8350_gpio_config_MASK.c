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
struct wm8350 {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int WM8350_GPIO_PULL_DOWN ; 
 int WM8350_GPIO_PULL_NONE ; 
 int WM8350_GPIO_PULL_UP ; 
 scalar_t__ FUNC0 (struct wm8350*,int,int) ; 
 scalar_t__ FUNC1 (struct wm8350*,int,int) ; 
 int FUNC2 (struct wm8350*,int,int) ; 
 scalar_t__ FUNC3 (struct wm8350*,int,int) ; 
 scalar_t__ FUNC4 (struct wm8350*,int,int) ; 
 scalar_t__ FUNC5 (struct wm8350*,int,int) ; 
 scalar_t__ FUNC6 (struct wm8350*,int,int) ; 

int FUNC7(struct wm8350 *wm8350, int gpio, int dir, int func,
		       int pol, int pull, int invert, int debounce)
{
	/* make sure we never pull up and down at the same time */
	if (pull == WM8350_GPIO_PULL_NONE) {
		if (FUNC6(wm8350, gpio, 0))
			goto err;
		if (FUNC5(wm8350, gpio, 0))
			goto err;
	} else if (pull == WM8350_GPIO_PULL_UP) {
		if (FUNC5(wm8350, gpio, 0))
			goto err;
		if (FUNC6(wm8350, gpio, 1))
			goto err;
	} else if (pull == WM8350_GPIO_PULL_DOWN) {
		if (FUNC6(wm8350, gpio, 0))
			goto err;
		if (FUNC5(wm8350, gpio, 1))
			goto err;
	}

	if (FUNC3(wm8350, gpio, invert))
		goto err;
	if (FUNC4(wm8350, gpio, pol))
		goto err;
	if (FUNC0(wm8350, gpio, debounce))
		goto err;
	if (FUNC1(wm8350, gpio, dir))
		goto err;
	return FUNC2(wm8350, gpio, func);

err:
	return -EIO;
}