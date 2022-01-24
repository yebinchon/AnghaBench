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
struct virtqueue {scalar_t__ service; struct virtqueue* next; } ;
struct device {unsigned int feature_len; int running; struct virtqueue* vq; int /*<<< orphan*/  irq_on_empty; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_F_NOTIFY_ON_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	unsigned int i;
	struct virtqueue *vq;

	FUNC3("Device %s OK: offered", dev->name);
	for (i = 0; i < dev->feature_len; i++)
		FUNC3(" %02x", FUNC2(dev)[i]);
	FUNC3(", accepted");
	for (i = 0; i < dev->feature_len; i++)
		FUNC3(" %02x", FUNC2(dev)
			[dev->feature_len+i]);

	dev->irq_on_empty = FUNC0(dev, VIRTIO_F_NOTIFY_ON_EMPTY);

	for (vq = dev->vq; vq; vq = vq->next) {
		if (vq->service)
			FUNC1(vq);
	}
	dev->running = true;
}