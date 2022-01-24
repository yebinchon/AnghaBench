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
struct videobuf_queue {int /*<<< orphan*/  dev; } ;
struct videobuf_dmabuf {int /*<<< orphan*/  direction; int /*<<< orphan*/  sglen; int /*<<< orphan*/  sglist; } ;
struct videobuf_buffer {scalar_t__ memory; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct videobuf_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct videobuf_queue*,struct videobuf_dmabuf*) ; 
 struct videobuf_dmabuf* FUNC3 (struct videobuf_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct videobuf_queue *vbq,
				    struct videobuf_buffer *vb)
{
	struct videobuf_dmabuf *dma = FUNC3(vb);

	/* wait for buffer, especially to get out of the sgdma queue */
	FUNC4(vb, 0, 0);
	if (vb->memory == V4L2_MEMORY_MMAP) {
		FUNC0(vbq->dev, dma->sglist, dma->sglen,
			     dma->direction);
		dma->direction = DMA_NONE;
	} else {
		FUNC2(vbq, FUNC3(vb));
		FUNC1(FUNC3(vb));
	}

	vb->state = VIDEOBUF_NEEDS_INIT;
}