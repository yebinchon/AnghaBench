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
typedef  scalar_t__ u8 ;
struct zfcp_qdio_queue {int /*<<< orphan*/  count; scalar_t__ first; } ;
struct zfcp_qdio {TYPE_1__* adapter; struct zfcp_qdio_queue resp_q; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {struct ccw_device* ccw_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  QDIO_FLAG_SYNC_INPUT ; 
 scalar_t__ QDIO_MAX_BUFFERS_PER_Q ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC2 (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct zfcp_qdio *qdio, int processed)
{
	struct zfcp_qdio_queue *queue = &qdio->resp_q;
	struct ccw_device *cdev = qdio->adapter->ccw_device;
	u8 count, start = queue->first;
	unsigned int retval;

	count = FUNC0(&queue->count) + processed;

	retval = FUNC2(cdev, QDIO_FLAG_SYNC_INPUT, 0, start, count);

	if (FUNC3(retval)) {
		FUNC1(&queue->count, count);
		/* FIXME: Recover this with an adapter reopen? */
	} else {
		queue->first += count;
		queue->first %= QDIO_MAX_BUFFERS_PER_Q;
		FUNC1(&queue->count, 0);
	}
}