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
struct device {int dummy; } ;
struct b3dfg_dev {int /*<<< orphan*/  buffer_lock; scalar_t__ triplet_ready; scalar_t__ transmission_enabled; int /*<<< orphan*/  buffer_queue; struct b3dfg_buffer* buffers; TYPE_1__* pdev; } ;
struct b3dfg_buffer {scalar_t__ state; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ B3DFG_BUFFER_PENDING ; 
 int EINVAL ; 
 int ENOENT ; 
 int b3dfg_nbuf ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct b3dfg_dev*,struct b3dfg_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct b3dfg_dev *fgdev, int bufidx)
{
	struct device *dev = &fgdev->pdev->dev;
	struct b3dfg_buffer *buf;
	unsigned long flags;
	int r = 0;

	FUNC4(&fgdev->buffer_lock, flags);
	if (bufidx < 0 || bufidx >= b3dfg_nbuf) {
		FUNC0(dev, "Invalid buffer index, %d\n", bufidx);
		r = -ENOENT;
		goto out;
	}
	buf = &fgdev->buffers[bufidx];

	if (FUNC6(buf->state == B3DFG_BUFFER_PENDING)) {
		FUNC0(dev, "buffer %d is already queued\n", bufidx);
		r = -EINVAL;
		goto out;
	}

	buf->state = B3DFG_BUFFER_PENDING;
	FUNC2(&buf->list, &fgdev->buffer_queue);

	if (fgdev->transmission_enabled && fgdev->triplet_ready) {
		FUNC0(dev, "triplet is ready, pushing immediately\n");
		fgdev->triplet_ready = 0;
		r = FUNC3(fgdev, buf, 0);
		if (r)
			FUNC1(dev, "unable to map DMA buffer\n");
	}

out:
	FUNC5(&fgdev->buffer_lock, flags);
	return r;
}