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
struct cx231xx {int /*<<< orphan*/  devlist_count; int /*<<< orphan*/  devlist; int /*<<< orphan*/ * udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cx231xx_devlist_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cx231xx *dev)
{
	if (dev == NULL)
		return;
	if (dev->udev == NULL)
		return;

	if (FUNC1(&dev->devlist_count) > 0) {
		FUNC3(&cx231xx_devlist_mutex);
		FUNC2(&dev->devlist);
		FUNC0(&dev->devlist_count);
		FUNC4(&cx231xx_devlist_mutex);
	}
}