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
struct node {int /*<<< orphan*/  sysdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  attr_cpulist ; 
 int /*<<< orphan*/  attr_cpumap ; 
 int /*<<< orphan*/  attr_distance ; 
 int /*<<< orphan*/  attr_meminfo ; 
 int /*<<< orphan*/  attr_numastat ; 
 int /*<<< orphan*/  FUNC0 (struct node*) ; 
 int /*<<< orphan*/  FUNC1 (struct node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct node *node)
{
	FUNC2(&node->sysdev, &attr_cpumap);
	FUNC2(&node->sysdev, &attr_cpulist);
	FUNC2(&node->sysdev, &attr_meminfo);
	FUNC2(&node->sysdev, &attr_numastat);
	FUNC2(&node->sysdev, &attr_distance);

	FUNC1(node);
	FUNC0(node);		/* no-op, if memoryless node */

	FUNC3(&node->sysdev);
}