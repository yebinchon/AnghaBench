#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned long start; } ;
struct TYPE_8__ {unsigned long size; unsigned long offset; } ;
struct sis_memblock {TYPE_4__ mm_node; int /*<<< orphan*/  owner_list; TYPE_3__ req; } ;
struct sis_file_private {int /*<<< orphan*/  obj_list; } ;
struct drm_file {struct sis_file_private* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_1__* dev_private; } ;
struct TYPE_6__ {scalar_t__ vram_initialized; scalar_t__ agp_initialized; unsigned long vram_offset; unsigned long agp_offset; int /*<<< orphan*/  object_idr; int /*<<< orphan*/  vram_mm; int /*<<< orphan*/  agp_mm; } ;
typedef  TYPE_1__ drm_sis_private_t ;
struct TYPE_7__ {unsigned long size; unsigned long offset; int free; } ;
typedef  TYPE_2__ drm_sis_mem_t ;

/* Variables and functions */
 int AGP_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long SIS_MM_ALIGN_MASK ; 
 unsigned long SIS_MM_ALIGN_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sis_memblock*,int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sis_memblock*) ; 
 struct sis_memblock* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC12(struct drm_device *dev, struct drm_file *file,
			 void *data, int pool)
{
	drm_sis_private_t *dev_priv = dev->dev_private;
	drm_sis_mem_t *mem = data;
	int retval = 0, user_key;
	struct sis_memblock *item;
	struct sis_file_private *file_priv = file->driver_priv;
	unsigned long offset;

	FUNC9(&dev->struct_mutex);

	if (0 == ((pool == 0) ? dev_priv->vram_initialized :
		      dev_priv->agp_initialized)) {
		FUNC1
		    ("Attempt to allocate from uninitialized memory manager.\n");
		FUNC10(&dev->struct_mutex);
		return -EINVAL;
	}

	item = FUNC7(sizeof(*item), GFP_KERNEL);
	if (!item) {
		retval = -ENOMEM;
		goto fail_alloc;
	}

	mem->size = (mem->size + SIS_MM_ALIGN_MASK) >> SIS_MM_ALIGN_SHIFT;
	if (pool == AGP_TYPE) {
		retval = FUNC2(&dev_priv->agp_mm,
					    &item->mm_node,
					    mem->size, 0);
		offset = item->mm_node.start;
	} else {
#if defined(CONFIG_FB_SIS) || defined(CONFIG_FB_SIS_MODULE)
		item->req.size = mem->size;
		sis_malloc(&item->req);
		if (item->req.size == 0)
			retval = -ENOMEM;
		offset = item->req.offset;
#else
		retval = FUNC2(&dev_priv->vram_mm,
					    &item->mm_node,
					    mem->size, 0);
		offset = item->mm_node.start;
#endif
	}
	if (retval)
		goto fail_alloc;

again:
	if (FUNC5(&dev_priv->object_idr, GFP_KERNEL) == 0) {
		retval = -ENOMEM;
		goto fail_idr;
	}

	retval = FUNC4(&dev_priv->object_idr, item, 1, &user_key);
	if (retval == -EAGAIN)
		goto again;
	if (retval)
		goto fail_idr;

	FUNC8(&item->owner_list, &file_priv->obj_list);
	FUNC10(&dev->struct_mutex);

	mem->offset = ((pool == 0) ?
		      dev_priv->vram_offset : dev_priv->agp_offset) +
	    (offset << SIS_MM_ALIGN_SHIFT);
	mem->free = user_key;
	mem->size = mem->size << SIS_MM_ALIGN_SHIFT;

	return 0;

fail_idr:
	FUNC3(&item->mm_node);
fail_alloc:
	FUNC6(item);
	FUNC10(&dev->struct_mutex);

	mem->offset = 0;
	mem->size = 0;
	mem->free = 0;

	FUNC0("alloc %d, size = %ld, offset = %ld\n", pool, mem->size,
		  mem->offset);

	return retval;
}