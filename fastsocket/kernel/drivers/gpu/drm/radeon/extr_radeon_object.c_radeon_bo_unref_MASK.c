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
struct ttm_buffer_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mclk_lock; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct radeon_bo {struct ttm_buffer_object tbo; struct radeon_device* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct radeon_bo **bo)
{
	struct ttm_buffer_object *tbo;
	struct radeon_device *rdev;

	if ((*bo) == NULL)
		return;
	rdev = (*bo)->rdev;
	tbo = &((*bo)->tbo);
	FUNC0(&rdev->pm.mclk_lock);
	FUNC1(&tbo);
	FUNC2(&rdev->pm.mclk_lock);
	if (tbo == NULL)
		*bo = NULL;
}