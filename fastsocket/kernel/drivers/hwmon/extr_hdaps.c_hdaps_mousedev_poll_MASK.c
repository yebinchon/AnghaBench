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
struct input_polled_dev {struct input_dev* input; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  HDAPS_PORT_XPOS ; 
 int /*<<< orphan*/  HDAPS_PORT_YPOS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  hdaps_mtx ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ rest_x ; 
 scalar_t__ rest_y ; 

__attribute__((used)) static void FUNC5(struct input_polled_dev *dev)
{
	struct input_dev *input_dev = dev->input;
	int x, y;

	FUNC3(&hdaps_mtx);

	if (FUNC0(HDAPS_PORT_XPOS, HDAPS_PORT_YPOS, &x, &y))
		goto out;

	FUNC1(input_dev, ABS_X, x - rest_x);
	FUNC1(input_dev, ABS_Y, y - rest_y);
	FUNC2(input_dev);

out:
	FUNC4(&hdaps_mtx);
}