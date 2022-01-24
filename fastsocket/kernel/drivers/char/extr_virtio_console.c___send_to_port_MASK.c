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
struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {size_t bytes_sent; } ;
struct port {int outvq_full; TYPE_1__ stats; int /*<<< orphan*/  outvq_lock; struct virtqueue* out_vq; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct virtqueue*,struct scatterlist*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtqueue*) ; 

__attribute__((used)) static ssize_t FUNC7(struct port *port, struct scatterlist *sg,
			      int nents, size_t in_count,
			      void *data, bool nonblock)
{
	struct virtqueue *out_vq;
	ssize_t ret;
	unsigned long flags;
	unsigned int len;

	out_vq = port->out_vq;

	FUNC2(&port->outvq_lock, flags);

	FUNC1(port);

	ret = FUNC4(out_vq, sg, nents, 0, data);

	/* Tell Host to go! */
	FUNC6(out_vq);

	if (ret < 0) {
		in_count = 0;
		goto done;
	}

	if (ret == 0)
		port->outvq_full = true;

	if (nonblock)
		goto done;

	/*
	 * Wait till the host acknowledges it pushed out the data we
	 * sent.  This is done for data from the hvc_console; the tty
	 * operations are performed with spinlocks held so we can't
	 * sleep here.  An alternative would be to copy the data to a
	 * buffer and relax the spinning requirement.  The downside is
	 * we need to kmalloc a GFP_ATOMIC buffer each time the
	 * console driver writes something out.
	 */
	while (!FUNC5(out_vq, &len))
		FUNC0();
done:
	FUNC3(&port->outvq_lock, flags);

	port->stats.bytes_sent += in_count;
	/*
	 * We're expected to return the amount of data we wrote -- all
	 * of it
	 */
	return in_count;
}