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
struct virtqueue {struct lguest_vq_info* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct lguest_vq_info {int /*<<< orphan*/  pages; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct lguest_vq_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC4(struct virtqueue *vq)
{
	struct lguest_vq_info *lvq = vq->priv;

	/* Release the interrupt */
	FUNC0(lvq->config.irq, vq);
	/* Tell virtio_ring.c to free the virtqueue. */
	FUNC3(vq);
	/* Unmap the pages containing the ring. */
	FUNC2(lvq->pages);
	/* Free our own queue information. */
	FUNC1(lvq);
}