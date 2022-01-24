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
struct input_dev {int /*<<< orphan*/  dev; } ;
struct dc_mouse {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MAPLE_FUNC_MOUSE ; 
 int /*<<< orphan*/  dc_mouse_callback ; 
 struct dc_mouse* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
	struct dc_mouse *mse = FUNC0(FUNC2(&dev->dev));

	FUNC1(mse->mdev, dc_mouse_callback, HZ/50,
		MAPLE_FUNC_MOUSE);

	return 0;
}