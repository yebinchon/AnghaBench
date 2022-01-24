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
struct evdev {size_t minor; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** evdev_table ; 
 int /*<<< orphan*/  evdev_table_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct evdev *evdev)
{
	/*
	 * Lock evdev table to prevent race with evdev_open()
	 */
	FUNC0(&evdev_table_mutex);
	evdev_table[evdev->minor] = NULL;
	FUNC1(&evdev_table_mutex);
}