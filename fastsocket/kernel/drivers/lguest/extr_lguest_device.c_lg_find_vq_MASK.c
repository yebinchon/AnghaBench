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
struct virtqueue {struct lguest_vq_info* priv; } ;
struct virtio_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  num; scalar_t__ pfn; } ;
struct lguest_vq_info {int /*<<< orphan*/  pages; TYPE_1__ config; } ;
struct lguest_device {TYPE_2__* desc; } ;
struct TYPE_4__ {unsigned int num_vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct virtqueue* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  LGUEST_VRING_ALIGN ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lguest_vq_info*) ; 
 struct lguest_vq_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lg_notify ; 
 unsigned int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,unsigned long) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtqueue*) ; 
 struct lguest_device* FUNC12 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct virtqueue*) ; 
 int /*<<< orphan*/  vring_interrupt ; 
 struct virtqueue* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (struct virtqueue*),char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct virtqueue *FUNC16(struct virtio_device *vdev,
				    unsigned index,
				    void (*callback)(struct virtqueue *vq),
				    const char *name)
{
	struct lguest_device *ldev = FUNC12(vdev);
	struct lguest_vq_info *lvq;
	struct virtqueue *vq;
	int err;

	/* We must have this many virtqueues. */
	if (index >= ldev->desc->num_vq)
		return FUNC1(-ENOENT);

	lvq = FUNC4(sizeof(*lvq), GFP_KERNEL);
	if (!lvq)
		return FUNC1(-ENOMEM);

	/*
	 * Make a copy of the "struct lguest_vqconfig" entry, which sits after
	 * the descriptor.  We need a copy because the config space might not
	 * be aligned correctly.
	 */
	FUNC9(&lvq->config, FUNC5(ldev->desc)+index, sizeof(lvq->config));

	FUNC10("Mapping virtqueue %i addr %lx\n", index,
	       (unsigned long)lvq->config.pfn << PAGE_SHIFT);
	/* Figure out how many pages the ring will take, and map that memory */
	lvq->pages = FUNC6((unsigned long)lvq->config.pfn << PAGE_SHIFT,
				FUNC0(FUNC15(lvq->config.num,
							LGUEST_VRING_ALIGN),
					     PAGE_SIZE));
	if (!lvq->pages) {
		err = -ENOMEM;
		goto free_lvq;
	}

	/*
	 * OK, tell virtio_ring.c to set up a virtqueue now we know its size
	 * and we've got a pointer to its pages.
	 */
	vq = FUNC14(lvq->config.num, LGUEST_VRING_ALIGN,
				 vdev, lvq->pages, lg_notify, callback, name);
	if (!vq) {
		err = -ENOMEM;
		goto unmap;
	}

	/* Make sure the interrupt is allocated. */
	FUNC7(lvq->config.irq);

	/*
	 * Tell the interrupt for this virtqueue to go to the virtio_ring
	 * interrupt handler.
	 *
	 * FIXME: We used to have a flag for the Host to tell us we could use
	 * the interrupt as a source of randomness: it'd be nice to have that
	 * back.
	 */
	err = FUNC11(lvq->config.irq, vring_interrupt, IRQF_SHARED,
			  FUNC2(&vdev->dev), vq);
	if (err)
		goto destroy_vring;

	/*
	 * Last of all we hook up our 'struct lguest_vq_info" to the
	 * virtqueue's priv pointer.
	 */
	vq->priv = lvq;
	return vq;

destroy_vring:
	FUNC13(vq);
unmap:
	FUNC8(lvq->pages);
free_lvq:
	FUNC3(lvq);
	return FUNC1(err);
}