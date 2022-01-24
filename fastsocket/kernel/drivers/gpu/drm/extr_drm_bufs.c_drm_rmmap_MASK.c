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
struct drm_local_map {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,struct drm_local_map*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_device *dev, struct drm_local_map *map)
{
	int ret;

	FUNC1(&dev->struct_mutex);
	ret = FUNC0(dev, map);
	FUNC2(&dev->struct_mutex);

	return ret;
}