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
struct ib_pd {int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * uobject; struct ib_device* device; } ;
struct ib_device {struct ib_pd* (* alloc_pd ) (struct ib_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_pd* FUNC2 (struct ib_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct ib_pd *FUNC3(struct ib_device *device)
{
	struct ib_pd *pd;

	pd = device->alloc_pd(device, NULL, NULL);

	if (!FUNC0(pd)) {
		pd->device  = device;
		pd->uobject = NULL;
		FUNC1(&pd->usecnt, 0);
	}

	return pd;
}