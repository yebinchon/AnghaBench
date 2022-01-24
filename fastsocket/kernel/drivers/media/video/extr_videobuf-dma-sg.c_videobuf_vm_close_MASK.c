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
struct vm_area_struct {int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; struct videobuf_mapping* vm_private_data; } ;
struct videobuf_queue {TYPE_2__** bufs; TYPE_1__* ops; } ;
struct videobuf_mapping {scalar_t__ count; struct videobuf_queue* q; } ;
struct videobuf_dma_sg_memory {int /*<<< orphan*/  magic; } ;
struct TYPE_4__ {scalar_t__ baddr; struct videobuf_mapping* map; struct videobuf_dma_sg_memory* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* buf_release ) (struct videobuf_queue*,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_SG_MEM ; 
 int VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct videobuf_mapping*,struct videobuf_queue*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct videobuf_mapping*) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct videobuf_queue*) ; 

__attribute__((used)) static void FUNC6(struct vm_area_struct *vma)
{
	struct videobuf_mapping *map = vma->vm_private_data;
	struct videobuf_queue *q = map->q;
	struct videobuf_dma_sg_memory *mem;
	int i;

	FUNC1(2, "vm_close %p [count=%d,vma=%08lx-%08lx]\n", map,
		map->count, vma->vm_start, vma->vm_end);

	map->count--;
	if (0 == map->count) {
		FUNC1(1, "munmap %p q=%p\n", map, q);
		FUNC4(q);
		for (i = 0; i < VIDEO_MAX_FRAME; i++) {
			if (NULL == q->bufs[i])
				continue;
			mem = q->bufs[i]->priv;
			if (!mem)
				continue;

			FUNC0(mem->magic, MAGIC_SG_MEM);

			if (q->bufs[i]->map != map)
				continue;
			q->bufs[i]->map   = NULL;
			q->bufs[i]->baddr = 0;
			q->ops->buf_release(q, q->bufs[i]);
		}
		FUNC5(q);
		FUNC2(map);
	}
	return;
}