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
struct resource {scalar_t__ end; scalar_t__ start; int /*<<< orphan*/  name; struct resource* parent; struct resource* sibling; struct resource* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct resource *parent,
				     struct resource *res)
{
	struct resource *p, **pp;
	struct resource **firstpp = NULL;

	for (pp = &parent->child; (p = *pp) != NULL; pp = &p->sibling) {
		if (p->end < res->start)
			continue;
		if (res->end < p->start)
			break;
		if (p->start < res->start || p->end > res->end)
			return -1;	/* not completely contained */
		if (firstpp == NULL)
			firstpp = pp;
	}
	if (firstpp == NULL)
		return -1;	/* didn't find any conflicting entries? */
	res->parent = parent;
	res->child = *firstpp;
	res->sibling = *pp;
	*firstpp = res;
	*pp = NULL;
	for (p = res->child; p != NULL; p = p->sibling) {
		p->parent = res;
		FUNC0("PCI: Reparented %s [%llx..%llx] under %s\n",
			 p->name,
			 (unsigned long long)p->start,
			 (unsigned long long)p->end, res->name);
	}
	return 0;
}