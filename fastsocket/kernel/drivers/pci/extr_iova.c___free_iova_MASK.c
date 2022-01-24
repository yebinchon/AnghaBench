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
struct iova_domain {int /*<<< orphan*/  iova_rbtree_lock; int /*<<< orphan*/  rbroot; } ;
struct iova {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iova_domain*,struct iova*) ; 
 int /*<<< orphan*/  FUNC1 (struct iova*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct iova_domain *iovad, struct iova *iova)
{
	unsigned long flags;

	FUNC3(&iovad->iova_rbtree_lock, flags);
	FUNC0(iovad, iova);
	FUNC2(&iova->node, &iovad->rbroot);
	FUNC4(&iovad->iova_rbtree_lock, flags);
	FUNC1(iova);
}