#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  offset; } ;
struct sis_memblock {TYPE_1__ req; int /*<<< orphan*/  mm_node; int /*<<< orphan*/  owner_list; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__* dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/  object_idr; } ;
typedef  TYPE_2__ drm_sis_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  free; } ;
typedef  TYPE_3__ drm_sis_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sis_memblock* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sis_memblock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_sis_private_t *dev_priv = dev->dev_private;
	drm_sis_mem_t *mem = data;
	struct sis_memblock *obj;

	FUNC7(&dev->struct_mutex);
	obj = FUNC3(&dev_priv->object_idr, mem->free);
	if (obj == NULL) {
		FUNC8(&dev->struct_mutex);
		return -EINVAL;
	}

	FUNC4(&dev_priv->object_idr, mem->free);
	FUNC6(&obj->owner_list);
	if (FUNC1(&obj->mm_node))
		FUNC2(&obj->mm_node);
#if defined(CONFIG_FB_SIS) || defined(CONFIG_FB_SIS_MODULE)
	else
		sis_free(obj->req.offset);
#endif
	FUNC5(obj);
	FUNC8(&dev->struct_mutex);
	FUNC0("free = 0x%lx\n", mem->free);

	return 0;
}