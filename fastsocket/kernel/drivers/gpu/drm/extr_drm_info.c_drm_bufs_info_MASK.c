#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device_dma {int buf_count; TYPE_4__** buflist; TYPE_3__* bufs; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct drm_device_dma* dma; } ;
struct TYPE_8__ {int /*<<< orphan*/  list; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; } ;
struct TYPE_7__ {int seg_count; int page_order; TYPE_2__ freelist; scalar_t__ buf_count; int /*<<< orphan*/  buf_size; } ;
struct TYPE_5__ {struct drm_device* dev; } ;

/* Variables and functions */
 int DRM_MAX_ORDER ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

int FUNC4(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *) m->private;
	struct drm_device *dev = node->minor->dev;
	struct drm_device_dma *dma;
	int i, seg_pages;

	FUNC1(&dev->struct_mutex);
	dma = dev->dma;
	if (!dma) {
		FUNC2(&dev->struct_mutex);
		return 0;
	}

	FUNC3(m, " o     size count  free	 segs pages    kB\n\n");
	for (i = 0; i <= DRM_MAX_ORDER; i++) {
		if (dma->bufs[i].buf_count) {
			seg_pages = dma->bufs[i].seg_count * (1 << dma->bufs[i].page_order);
			FUNC3(m, "%2d %8d %5d %5d %5d %5d %5ld\n",
				   i,
				   dma->bufs[i].buf_size,
				   dma->bufs[i].buf_count,
				   FUNC0(&dma->bufs[i].freelist.count),
				   dma->bufs[i].seg_count,
				   seg_pages,
				   seg_pages * PAGE_SIZE / 1024);
		}
	}
	FUNC3(m, "\n");
	for (i = 0; i < dma->buf_count; i++) {
		if (i && !(i % 32))
			FUNC3(m, "\n");
		FUNC3(m, " %d", dma->buflist[i]->list);
	}
	FUNC3(m, "\n");
	FUNC2(&dev->struct_mutex);
	return 0;
}