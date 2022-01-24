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
struct input_handle {struct evdev* private; } ;
struct evdev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct input_handle *handle)
{
	struct evdev *evdev = handle->private;

	FUNC0(&evdev->dev);
	FUNC1(evdev);
	FUNC2(handle);
	FUNC3(&evdev->dev);
}