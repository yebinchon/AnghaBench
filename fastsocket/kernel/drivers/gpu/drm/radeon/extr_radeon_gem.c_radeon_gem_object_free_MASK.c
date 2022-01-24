#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sg; } ;
struct TYPE_4__ {scalar_t__ import_attach; } ;
struct radeon_bo {TYPE_1__ tbo; TYPE_2__ gem_base; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct radeon_bo* FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_bo**) ; 

void FUNC3(struct drm_gem_object *gobj)
{
	struct radeon_bo *robj = FUNC1(gobj);

	if (robj) {
		if (robj->gem_base.import_attach)
			FUNC0(&robj->gem_base, robj->tbo.sg);
		FUNC2(&robj);
	}
}