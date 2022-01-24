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
struct dma_buf_attachment {int /*<<< orphan*/  node; } ;
struct dma_buf {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* detach ) (struct dma_buf*,struct dma_buf_attachment*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_buf*,struct dma_buf_attachment*) ; 

void FUNC6(struct dma_buf *dmabuf, struct dma_buf_attachment *attach)
{
	if (FUNC0(!dmabuf || !attach))
		return;

	FUNC3(&dmabuf->lock);
	FUNC2(&attach->node);
	if (dmabuf->ops->detach)
		dmabuf->ops->detach(dmabuf, attach);

	FUNC4(&dmabuf->lock);
	FUNC1(attach);
}