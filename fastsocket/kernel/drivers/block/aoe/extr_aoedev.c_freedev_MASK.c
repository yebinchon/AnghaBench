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
struct aoetgt {int dummy; } ;
struct aoedev {int flags; int ntargets; int /*<<< orphan*/  lock; int /*<<< orphan*/  sysminor; scalar_t__ bufpool; struct aoetgt** targets; int /*<<< orphan*/  blkq; scalar_t__ gd; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int DEVFL_FREED ; 
 int DEVFL_FREEING ; 
 int DEVFL_TKILL ; 
 int /*<<< orphan*/  FUNC0 (struct aoedev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct aoedev*,struct aoetgt*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct aoedev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC11(struct aoedev *d)
{
	struct aoetgt **t, **e;
	int freeing = 0;
	unsigned long flags;

	FUNC9(&d->lock, flags);
	if (d->flags & DEVFL_TKILL
	&& !(d->flags & DEVFL_FREEING)) {
		d->flags |= DEVFL_FREEING;
		freeing = 1;
	}
	FUNC10(&d->lock, flags);
	if (!freeing)
		return;

	FUNC3(&d->timer);
	if (d->gd) {
		FUNC0(d);
		FUNC2(d->gd);
		FUNC7(d->gd);
		FUNC1(d->blkq);
	}
	t = d->targets;
	e = t + d->ntargets;
	for (; t < e && *t; t++)
		FUNC4(d, *t);
	if (d->bufpool)
		FUNC5(d->bufpool);
	FUNC8(d);
	FUNC6(d->sysminor);

	FUNC9(&d->lock, flags);
	d->flags |= DEVFL_FREED;
	FUNC10(&d->lock, flags);
}