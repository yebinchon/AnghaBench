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
struct drm_global_reference {size_t global_type; int /*<<< orphan*/  (* release ) (struct drm_global_reference*) ;int /*<<< orphan*/ * object; } ;
struct drm_global_item {scalar_t__ refcount; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_global_item* glob ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_global_reference*) ; 

void FUNC4(struct drm_global_reference *ref)
{
	struct drm_global_item *item = &glob[ref->global_type];

	FUNC1(&item->mutex);
	FUNC0(item->refcount == 0);
	FUNC0(ref->object != item->object);
	if (--item->refcount == 0) {
		ref->release(ref);
		item->object = NULL;
	}
	FUNC2(&item->mutex);
}