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
typedef  int /*<<< orphan*/  u64 ;
struct ib_phys_buf {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; TYPE_1__* device; } ;
struct ib_mr {int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_mr* (* reg_phys_mr ) (struct ib_pd*,struct ib_phys_buf*,int,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 struct ib_mr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_mr* FUNC4 (struct ib_pd*,struct ib_phys_buf*,int,int,int /*<<< orphan*/ *) ; 

struct ib_mr *FUNC5(struct ib_pd *pd,
			     struct ib_phys_buf *phys_buf_array,
			     int num_phys_buf,
			     int mr_access_flags,
			     u64 *iova_start)
{
	struct ib_mr *mr;

	if (!pd->device->reg_phys_mr)
		return FUNC0(-ENOSYS);

	mr = pd->device->reg_phys_mr(pd, phys_buf_array, num_phys_buf,
				     mr_access_flags, iova_start);

	if (!FUNC1(mr)) {
		mr->device  = pd->device;
		mr->pd      = pd;
		mr->uobject = NULL;
		FUNC2(&pd->usecnt);
		FUNC3(&mr->usecnt, 0);
	}

	return mr;
}