#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int num; int pfn; scalar_t__ irq; } ;
struct virtqueue {void (* service ) (struct virtqueue*) ;struct virtqueue* next; TYPE_2__ config; int /*<<< orphan*/  vring; scalar_t__ thread; struct device* dev; scalar_t__ last_avail_idx; } ;
struct device {struct virtqueue* vq; TYPE_1__* desc; int /*<<< orphan*/  num_vq; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_6__ {int /*<<< orphan*/  next_irq; } ;
struct TYPE_4__ {scalar_t__ config_len; scalar_t__ feature_len; int /*<<< orphan*/  num_vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LGUEST_VRING_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 TYPE_3__ devices ; 
 void* FUNC2 (unsigned int) ; 
 int FUNC3 () ; 
 struct virtqueue* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int,void*,int /*<<< orphan*/ ) ; 
 int FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct device *dev, unsigned int num_descs,
			  void (*service)(struct virtqueue *))
{
	unsigned int pages;
	struct virtqueue **i, *vq = FUNC4(sizeof(*vq));
	void *p;

	/* First we need some memory for this virtqueue. */
	pages = (FUNC9(num_descs, LGUEST_VRING_ALIGN) + FUNC3() - 1)
		/ FUNC3();
	p = FUNC2(pages);

	/* Initialize the virtqueue */
	vq->next = NULL;
	vq->last_avail_idx = 0;
	vq->dev = dev;

	/*
	 * This is the routine the service thread will run, and its Process ID
	 * once it's running.
	 */
	vq->service = service;
	vq->thread = (pid_t)-1;

	/* Initialize the configuration. */
	vq->config.num = num_descs;
	vq->config.irq = devices.next_irq++;
	vq->config.pfn = FUNC6(p) / FUNC3();

	/* Initialize the vring. */
	FUNC8(&vq->vring, num_descs, p, LGUEST_VRING_ALIGN);

	/*
	 * Append virtqueue to this device's descriptor.  We use
	 * device_config() to get the end of the device's current virtqueues;
	 * we check that we haven't added any config or feature information
	 * yet, otherwise we'd be overwriting them.
	 */
	FUNC0(dev->desc->config_len == 0 && dev->desc->feature_len == 0);
	FUNC5(FUNC1(dev), &vq->config, sizeof(vq->config));
	dev->num_vq++;
	dev->desc->num_vq++;

	FUNC7("Virtqueue page %#lx\n", FUNC6(p));

	/*
	 * Add to tail of list, so dev->vq is first vq, dev->vq->next is
	 * second.
	 */
	for (i = &dev->vq; *i; i = &(*i)->next);
	*i = vq;
}