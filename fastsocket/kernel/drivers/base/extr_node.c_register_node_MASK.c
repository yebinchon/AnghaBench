#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int id; int /*<<< orphan*/ * cls; } ;
struct node {TYPE_1__ sysdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  attr_cpulist ; 
 int /*<<< orphan*/  attr_cpumap ; 
 int /*<<< orphan*/  attr_distance ; 
 int /*<<< orphan*/  attr_meminfo ; 
 int /*<<< orphan*/  attr_numastat ; 
 int /*<<< orphan*/  FUNC0 (struct node*) ; 
 int /*<<< orphan*/  FUNC1 (struct node*) ; 
 int /*<<< orphan*/  node_class ; 
 int /*<<< orphan*/  FUNC2 (struct node*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(struct node *node, int num, struct node *parent)
{
	int error;

	node->sysdev.id = num;
	node->sysdev.cls = &node_class;
	error = FUNC4(&node->sysdev);

	if (!error){
		FUNC3(&node->sysdev, &attr_cpumap);
		FUNC3(&node->sysdev, &attr_cpulist);
		FUNC3(&node->sysdev, &attr_meminfo);
		FUNC3(&node->sysdev, &attr_numastat);
		FUNC3(&node->sysdev, &attr_distance);

		FUNC2(node);

		FUNC1(node);

		FUNC0(node);
	}
	return error;
}