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
struct drm_device_dma {int buf_count; int page_count; int /*<<< orphan*/  flags; scalar_t__ byte_count; int /*<<< orphan*/  seg_count; struct drm_buf** buflist; struct drm_buf_entry* bufs; } ;
struct drm_device {int /*<<< orphan*/  buf_alloc; int /*<<< orphan*/  struct_mutex; TYPE_2__* driver; TYPE_1__* sg; int /*<<< orphan*/  count_lock; scalar_t__ buf_use; struct drm_device_dma* dma; } ;
struct drm_buf_entry {int buf_count; int buf_size; int page_order; scalar_t__ seg_count; struct drm_buf* buflist; } ;
struct drm_buf_desc {int count; int size; int flags; unsigned long agp_start; } ;
struct drm_buf {int idx; int total; int order; unsigned long bus_address; int dev_priv_size; void* address; void* dev_private; int /*<<< orphan*/ * file_priv; scalar_t__ pending; scalar_t__ waiting; int /*<<< orphan*/ * next; scalar_t__ offset; scalar_t__ used; } ;
struct TYPE_4__ {int dev_priv_size; } ;
struct TYPE_3__ {scalar_t__ virtual; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  DRIVER_SG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int DRM_MAX_ORDER ; 
 int DRM_MIN_ORDER ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  _DRM_DMA_USE_SG ; 
 int _DRM_PAGE_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_buf_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 struct drm_buf** FUNC8 (struct drm_buf**,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct drm_device * dev, struct drm_buf_desc * request)
{
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf_entry *entry;
	struct drm_buf *buf;
	unsigned long offset;
	unsigned long agp_offset;
	int count;
	int order;
	int size;
	int alignment;
	int page_order;
	int total;
	int byte_count;
	int i;
	struct drm_buf **temp_buflist;

	if (!FUNC6(dev, DRIVER_SG))
		return -EINVAL;

	if (!dma)
		return -EINVAL;

	if (!FUNC4(CAP_SYS_ADMIN))
		return -EPERM;

	count = request->count;
	order = FUNC7(request->size);
	size = 1 << order;

	alignment = (request->flags & _DRM_PAGE_ALIGN)
	    ? FUNC1(size) : size;
	page_order = order - PAGE_SHIFT > 0 ? order - PAGE_SHIFT : 0;
	total = PAGE_SIZE << page_order;

	byte_count = 0;
	agp_offset = request->agp_start;

	FUNC0("count:      %d\n", count);
	FUNC0("order:      %d\n", order);
	FUNC0("size:       %d\n", size);
	FUNC0("agp_offset: %lu\n", agp_offset);
	FUNC0("alignment:  %d\n", alignment);
	FUNC0("page_order: %d\n", page_order);
	FUNC0("total:      %d\n", total);

	if (order < DRM_MIN_ORDER || order > DRM_MAX_ORDER)
		return -EINVAL;

	FUNC12(&dev->count_lock);
	if (dev->buf_use) {
		FUNC13(&dev->count_lock);
		return -EBUSY;
	}
	FUNC3(&dev->buf_alloc);
	FUNC13(&dev->count_lock);

	FUNC10(&dev->struct_mutex);
	entry = &dma->bufs[order];
	if (entry->buf_count) {
		FUNC11(&dev->struct_mutex);
		FUNC2(&dev->buf_alloc);
		return -ENOMEM;	/* May only call once for each order */
	}

	if (count < 0 || count > 4096) {
		FUNC11(&dev->struct_mutex);
		FUNC2(&dev->buf_alloc);
		return -EINVAL;
	}

	entry->buflist = FUNC9(count * sizeof(*entry->buflist),
				GFP_KERNEL);
	if (!entry->buflist) {
		FUNC11(&dev->struct_mutex);
		FUNC2(&dev->buf_alloc);
		return -ENOMEM;
	}

	entry->buf_size = size;
	entry->page_order = page_order;

	offset = 0;

	while (entry->buf_count < count) {
		buf = &entry->buflist[entry->buf_count];
		buf->idx = dma->buf_count + entry->buf_count;
		buf->total = alignment;
		buf->order = order;
		buf->used = 0;

		buf->offset = (dma->byte_count + offset);
		buf->bus_address = agp_offset + offset;
		buf->address = (void *)(agp_offset + offset
					+ (unsigned long)dev->sg->virtual);
		buf->next = NULL;
		buf->waiting = 0;
		buf->pending = 0;
		buf->file_priv = NULL;

		buf->dev_priv_size = dev->driver->dev_priv_size;
		buf->dev_private = FUNC9(buf->dev_priv_size, GFP_KERNEL);
		if (!buf->dev_private) {
			/* Set count correctly so we free the proper amount. */
			entry->buf_count = count;
			FUNC5(dev, entry);
			FUNC11(&dev->struct_mutex);
			FUNC2(&dev->buf_alloc);
			return -ENOMEM;
		}

		FUNC0("buffer %d @ %p\n", entry->buf_count, buf->address);

		offset += alignment;
		entry->buf_count++;
		byte_count += PAGE_SIZE << page_order;
	}

	FUNC0("byte_count: %d\n", byte_count);

	temp_buflist = FUNC8(dma->buflist,
				(dma->buf_count + entry->buf_count) *
				sizeof(*dma->buflist), GFP_KERNEL);
	if (!temp_buflist) {
		/* Free the entry because it isn't valid */
		FUNC5(dev, entry);
		FUNC11(&dev->struct_mutex);
		FUNC2(&dev->buf_alloc);
		return -ENOMEM;
	}
	dma->buflist = temp_buflist;

	for (i = 0; i < entry->buf_count; i++) {
		dma->buflist[i + dma->buf_count] = &entry->buflist[i];
	}

	dma->buf_count += entry->buf_count;
	dma->seg_count += entry->seg_count;
	dma->page_count += byte_count >> PAGE_SHIFT;
	dma->byte_count += byte_count;

	FUNC0("dma->buf_count : %d\n", dma->buf_count);
	FUNC0("entry->buf_count : %d\n", entry->buf_count);

	FUNC11(&dev->struct_mutex);

	request->count = entry->buf_count;
	request->size = size;

	dma->flags = _DRM_DMA_USE_SG;

	FUNC2(&dev->buf_alloc);
	return 0;
}