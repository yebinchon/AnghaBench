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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ pegasus_count ; 
 int /*<<< orphan*/ * pegasus_workqueue ; 

__attribute__((used)) static void FUNC1(void)
{
	pegasus_count--;
	if (pegasus_count == 0) {
		FUNC0(pegasus_workqueue);
		pegasus_workqueue = NULL;
	}
}