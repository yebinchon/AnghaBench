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
struct c2_dev {int /*<<< orphan*/  lock; struct c2_cq** qptr_array; } ;
struct c2_cq {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct c2_cq *FUNC3(struct c2_dev *c2dev, int cqn)
{
	struct c2_cq *cq;
	unsigned long flags;

	FUNC1(&c2dev->lock, flags);
	cq = c2dev->qptr_array[cqn];
	if (!cq) {
		FUNC2(&c2dev->lock, flags);
		return NULL;
	}
	FUNC0(&cq->refcount);
	FUNC2(&c2dev->lock, flags);
	return cq;
}