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
typedef  int /*<<< orphan*/  u32 ;
struct virtqueue {int dummy; } ;
struct virtio_console_control {unsigned int event; unsigned int value; int /*<<< orphan*/  id; } ;
struct scatterlist {int dummy; } ;
struct ports_device {int /*<<< orphan*/  c_ovq_lock; struct virtqueue* c_ovq; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  cpkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,struct virtio_console_control*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ports_device*) ; 
 scalar_t__ FUNC5 (struct virtqueue*,struct scatterlist*,int,int /*<<< orphan*/ ,struct virtio_console_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 

__attribute__((used)) static ssize_t FUNC8(struct ports_device *portdev, u32 port_id,
				  unsigned int event, unsigned int value)
{
	struct scatterlist sg[1];
	struct virtio_console_control cpkt;
	struct virtqueue *vq;
	unsigned int len;

	if (!FUNC4(portdev))
		return 0;

	cpkt.id = port_id;
	cpkt.event = event;
	cpkt.value = value;

	vq = portdev->c_ovq;

	FUNC1(sg, &cpkt, sizeof(cpkt));

	FUNC2(&portdev->c_ovq_lock);
	if (FUNC5(vq, sg, 1, 0, &cpkt) >= 0) {
		FUNC7(vq);
		while (!FUNC6(vq, &len))
			FUNC0();
	}
	FUNC3(&portdev->c_ovq_lock);
	return 0;
}