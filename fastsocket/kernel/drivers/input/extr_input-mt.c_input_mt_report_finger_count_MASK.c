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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_QUADTAP ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct input_dev *dev, int count)
{
	FUNC0(dev, EV_KEY, BTN_TOOL_FINGER, count == 1);
	FUNC0(dev, EV_KEY, BTN_TOOL_DOUBLETAP, count == 2);
	FUNC0(dev, EV_KEY, BTN_TOOL_TRIPLETAP, count == 3);
	FUNC0(dev, EV_KEY, BTN_TOOL_QUADTAP, count == 4);
}