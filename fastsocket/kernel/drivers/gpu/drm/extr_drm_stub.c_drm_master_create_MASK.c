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
struct drm_minor {int /*<<< orphan*/  master_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock_queue; int /*<<< orphan*/  spinlock; } ;
struct drm_master {int /*<<< orphan*/  head; struct drm_minor* minor; int /*<<< orphan*/  magicfree; int /*<<< orphan*/  magiclist; TYPE_1__ lock; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MAGIC_HASH_ORDER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_master* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct drm_master *FUNC7(struct drm_minor *minor)
{
	struct drm_master *master;

	master = FUNC4(sizeof(*master), GFP_KERNEL);
	if (!master)
		return NULL;

	FUNC3(&master->refcount);
	FUNC6(&master->lock.spinlock);
	FUNC2(&master->lock.lock_queue);
	FUNC1(&master->magiclist, DRM_MAGIC_HASH_ORDER);
	FUNC0(&master->magicfree);
	master->minor = minor;

	FUNC5(&master->head, &minor->master_list);

	return master;
}