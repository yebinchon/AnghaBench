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
struct ib_pd {int /*<<< orphan*/  usecnt; TYPE_1__* device; } ;
struct ib_mw {int type; int /*<<< orphan*/ * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
typedef  enum ib_mw_type { ____Placeholder_ib_mw_type } ib_mw_type ;
struct TYPE_2__ {struct ib_mw* (* alloc_mw ) (struct ib_pd*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 struct ib_mw* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ib_mw* FUNC3 (struct ib_pd*,int) ; 

struct ib_mw *FUNC4(struct ib_pd *pd, enum ib_mw_type type)
{
	struct ib_mw *mw;

	if (!pd->device->alloc_mw)
		return FUNC0(-ENOSYS);

	mw = pd->device->alloc_mw(pd, type);
	if (!FUNC1(mw)) {
		mw->device  = pd->device;
		mw->pd      = pd;
		mw->uobject = NULL;
		mw->type    = type;
		FUNC2(&pd->usecnt);
	}

	return mw;
}