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
struct via_memblock {int /*<<< orphan*/  mm_node; int /*<<< orphan*/  owner_list; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_1__* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  object_idr; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ drm_via_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct via_memblock* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct via_memblock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_via_private_t *dev_priv = dev->dev_private;
	drm_via_mem_t *mem = data;
	struct via_memblock *obj;

	FUNC6(&dev->struct_mutex);
	obj = FUNC2(&dev_priv->object_idr, mem->index);
	if (obj == NULL) {
		FUNC7(&dev->struct_mutex);
		return -EINVAL;
	}

	FUNC3(&dev_priv->object_idr, mem->index);
	FUNC5(&obj->owner_list);
	FUNC1(&obj->mm_node);
	FUNC4(obj);
	FUNC7(&dev->struct_mutex);

	FUNC0("free = 0x%lx\n", mem->index);

	return 0;
}