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
struct joydev {int /*<<< orphan*/  dev; } ;
struct input_handle {struct joydev* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct joydev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct input_handle *handle)
{
	struct joydev *joydev = handle->private;

	FUNC0(&joydev->dev);
	FUNC2(joydev);
	FUNC1(handle);
	FUNC3(&joydev->dev);
}