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
struct ib_mr {int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_mr* (* get_dma_mr ) (struct ib_pd*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_mr* FUNC3 (struct ib_pd*,int) ; 

struct ib_mr *FUNC4(struct ib_pd *pd, int mr_access_flags)
{
	struct ib_mr *mr;

	mr = pd->device->get_dma_mr(pd, mr_access_flags);

	if (!FUNC0(mr)) {
		mr->device  = pd->device;
		mr->pd      = pd;
		mr->uobject = NULL;
		FUNC1(&pd->usecnt);
		FUNC2(&mr->usecnt, 0);
	}

	return mr;
}