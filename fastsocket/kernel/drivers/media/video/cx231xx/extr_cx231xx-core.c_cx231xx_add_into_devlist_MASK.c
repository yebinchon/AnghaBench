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
struct cx231xx {int /*<<< orphan*/  devlist_count; int /*<<< orphan*/  devlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cx231xx_devlist ; 
 int /*<<< orphan*/  cx231xx_devlist_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cx231xx *dev)
{
	FUNC2(&cx231xx_devlist_mutex);
	FUNC1(&dev->devlist, &cx231xx_devlist);
	FUNC0(&dev->devlist_count);
	FUNC3(&cx231xx_devlist_mutex);
}