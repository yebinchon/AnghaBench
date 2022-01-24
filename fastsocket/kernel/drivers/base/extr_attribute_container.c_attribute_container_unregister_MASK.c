#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  k_lock; int /*<<< orphan*/  k_list; } ;
struct attribute_container {TYPE_1__ containers; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  attribute_container_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct attribute_container *cont)
{
	int retval = -EBUSY;
	FUNC2(&attribute_container_mutex);
	FUNC4(&cont->containers.k_lock);
	if (!FUNC1(&cont->containers.k_list))
		goto out;
	retval = 0;
	FUNC0(&cont->node);
 out:
	FUNC5(&cont->containers.k_lock);
	FUNC3(&attribute_container_mutex);
	return retval;
		
}