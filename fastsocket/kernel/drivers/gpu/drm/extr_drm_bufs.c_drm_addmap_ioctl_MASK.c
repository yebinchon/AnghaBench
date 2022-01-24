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
struct drm_map_list {scalar_t__ user_token; } ;
struct drm_map {scalar_t__ type; void* handle; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 scalar_t__ _DRM_AGP ; 
 scalar_t__ _DRM_SHM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct drm_map_list**) ; 

int FUNC2(struct drm_device *dev, void *data,
		     struct drm_file *file_priv)
{
	struct drm_map *map = data;
	struct drm_map_list *maplist;
	int err;

	if (!(FUNC0(CAP_SYS_ADMIN) || map->type == _DRM_AGP || map->type == _DRM_SHM))
		return -EPERM;

	err = FUNC1(dev, map->offset, map->size, map->type,
			      map->flags, &maplist);

	if (err)
		return err;

	/* avoid a warning on 64-bit, this casting isn't very nice, but the API is set so too late */
	map->handle = (void *)(unsigned long)maplist->user_token;
	return 0;
}