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
struct videobuf_dmabuf {scalar_t__ sglen; int /*<<< orphan*/ * sglist; int /*<<< orphan*/  direction; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct videobuf_queue *vbq,
				  struct videobuf_dmabuf *dma)
{
	int err = 0;

	dma->direction = PCI_DMA_FROMDEVICE;
	if (!FUNC0(vbq->dev, dma->sglist, dma->sglen, dma->direction)) {
		FUNC1(dma->sglist);
		dma->sglist = NULL;
		dma->sglen = 0;
		err = -EIO;
	}

	return err;
}