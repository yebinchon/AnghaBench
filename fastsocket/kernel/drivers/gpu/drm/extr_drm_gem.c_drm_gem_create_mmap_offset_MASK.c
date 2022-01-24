#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
struct drm_map_list {struct drm_local_map* map; TYPE_1__* file_offset_node; TYPE_5__ hash; } ;
struct drm_local_map {int size; struct drm_gem_object* handle; int /*<<< orphan*/  type; } ;
struct drm_gem_object {int size; int /*<<< orphan*/  name; struct drm_map_list map_list; struct drm_device* dev; } ;
struct drm_gem_mm {int /*<<< orphan*/  offset_hash; int /*<<< orphan*/  offset_manager; } ;
struct drm_device {struct drm_gem_mm* mm_private; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  _DRM_GEM ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_local_map*) ; 
 struct drm_local_map* FUNC6 (int,int /*<<< orphan*/ ) ; 

int
FUNC7(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct drm_gem_mm *mm = dev->mm_private;
	struct drm_map_list *list;
	struct drm_local_map *map;
	int ret;

	/* Set the object up for mmap'ing */
	list = &obj->map_list;
	list->map = FUNC6(sizeof(struct drm_map_list), GFP_KERNEL);
	if (!list->map)
		return -ENOMEM;

	map = list->map;
	map->type = _DRM_GEM;
	map->size = obj->size;
	map->handle = obj;

	/* Get a DRM GEM mmap offset allocated... */
	list->file_offset_node = FUNC4(&mm->offset_manager,
			obj->size / PAGE_SIZE, 0, false);

	if (!list->file_offset_node) {
		FUNC0("failed to allocate offset for bo %d\n", obj->name);
		ret = -ENOSPC;
		goto out_free_list;
	}

	list->file_offset_node = FUNC2(list->file_offset_node,
			obj->size / PAGE_SIZE, 0);
	if (!list->file_offset_node) {
		ret = -ENOMEM;
		goto out_free_list;
	}

	list->hash.key = list->file_offset_node->start;
	ret = FUNC1(&mm->offset_hash, &list->hash);
	if (ret) {
		FUNC0("failed to add to map hash\n");
		goto out_free_mm;
	}

	return 0;

out_free_mm:
	FUNC3(list->file_offset_node);
out_free_list:
	FUNC5(list->map);
	list->map = NULL;

	return ret;
}