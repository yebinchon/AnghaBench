#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  mem_type; } ;
struct TYPE_8__ {TYPE_2__* bdev; scalar_t__ sync_obj; TYPE_1__ mem; } ;
struct radeon_bo {TYPE_3__ tbo; } ;
struct TYPE_7__ {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int,int,int) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct radeon_bo *bo, u32 *mem_type, bool no_wait)
{
	int r;

	r = FUNC2(&bo->tbo, true, no_wait, false, 0);
	if (FUNC5(r != 0))
		return r;
	FUNC0(&bo->tbo.bdev->fence_lock);
	if (mem_type)
		*mem_type = bo->tbo.mem.mem_type;
	if (bo->tbo.sync_obj)
		r = FUNC4(&bo->tbo, true, true, no_wait);
	FUNC1(&bo->tbo.bdev->fence_lock);
	FUNC3(&bo->tbo);
	return r;
}