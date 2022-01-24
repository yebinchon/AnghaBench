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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  polldev_mutex ; 
 int /*<<< orphan*/  polldev_users ; 
 int /*<<< orphan*/  polldev_wq ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(&polldev_mutex);

	if (!--polldev_users)
		FUNC0(polldev_wq);

	FUNC2(&polldev_mutex);
}