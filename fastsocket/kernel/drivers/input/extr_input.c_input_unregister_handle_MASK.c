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
struct input_handle {int /*<<< orphan*/  d_node; int /*<<< orphan*/  h_node; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct input_handle *handle)
{
	struct input_dev *dev = handle->dev;

	FUNC0(&handle->h_node);

	/*
	 * Take dev->mutex to prevent race with input_release_device().
	 */
	FUNC2(&dev->mutex);
	FUNC1(&handle->d_node);
	FUNC3(&dev->mutex);
	FUNC4();
}