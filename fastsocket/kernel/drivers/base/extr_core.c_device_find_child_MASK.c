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
struct klist_iter {int dummy; } ;
struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  klist_children; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct klist_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct klist_iter*) ; 
 struct device* FUNC3 (struct klist_iter*) ; 

struct device *FUNC4(struct device *parent, void *data,
				 int (*match)(struct device *dev, void *data))
{
	struct klist_iter i;
	struct device *child;

	if (!parent)
		return NULL;

	FUNC2(&parent->p->klist_children, &i);
	while ((child = FUNC3(&i)))
		if (match(child, data) && FUNC0(child))
			break;
	FUNC1(&i);
	return child;
}