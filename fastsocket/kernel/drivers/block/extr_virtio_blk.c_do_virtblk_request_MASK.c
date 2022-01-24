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
struct virtio_blk {scalar_t__ sg_elems; int /*<<< orphan*/  vq; } ;
struct request_queue {struct virtio_blk* queuedata; } ;
struct request {scalar_t__ nr_phys_segments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,struct virtio_blk*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct request_queue *q)
{
	struct virtio_blk *vblk = q->queuedata;
	struct request *req;
	unsigned int issued = 0;

	while ((req = FUNC1(q)) != NULL) {
		FUNC0(req->nr_phys_segments + 2 > vblk->sg_elems);

		/* If this request fails, stop queue and wait for something to
		   finish to restart it. */
		if (!FUNC4(q, vblk, req)) {
			FUNC3(q);
			break;
		}
		FUNC2(req);
		issued++;
	}

	if (issued)
		FUNC5(vblk->vq);
}