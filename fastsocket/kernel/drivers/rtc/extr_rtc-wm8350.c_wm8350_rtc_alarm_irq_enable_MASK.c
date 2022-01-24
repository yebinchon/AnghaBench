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
struct device {int dummy; } ;

/* Variables and functions */
 struct wm8350* FUNC0 (struct device*) ; 
 int FUNC1 (struct wm8350*) ; 
 int FUNC2 (struct wm8350*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				       unsigned int enabled)
{
	struct wm8350 *wm8350 = FUNC0(dev);

	if (enabled)
		return FUNC1(wm8350);
	else
		return FUNC2(wm8350);
}