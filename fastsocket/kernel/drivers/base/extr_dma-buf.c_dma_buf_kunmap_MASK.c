#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dma_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* kunmap ) (struct dma_buf*,unsigned long,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_buf*,unsigned long,void*) ; 

void FUNC2(struct dma_buf *dmabuf, unsigned long page_num,
		    void *vaddr)
{
	FUNC0(!dmabuf);

	if (dmabuf->ops->kunmap)
		dmabuf->ops->kunmap(dmabuf, page_num, vaddr);
}