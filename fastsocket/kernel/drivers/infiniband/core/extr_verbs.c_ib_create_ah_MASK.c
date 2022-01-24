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
struct ib_ah_attr {int dummy; } ;
struct ib_ah {int /*<<< orphan*/ * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_ah* (* create_ah ) (struct ib_pd*,struct ib_ah_attr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ib_ah* FUNC2 (struct ib_pd*,struct ib_ah_attr*) ; 

struct ib_ah *FUNC3(struct ib_pd *pd, struct ib_ah_attr *ah_attr)
{
	struct ib_ah *ah;

	ah = pd->device->create_ah(pd, ah_attr);

	if (!FUNC0(ah)) {
		ah->device  = pd->device;
		ah->pd      = pd;
		ah->uobject = NULL;
		FUNC1(&pd->usecnt);
	}

	return ah;
}