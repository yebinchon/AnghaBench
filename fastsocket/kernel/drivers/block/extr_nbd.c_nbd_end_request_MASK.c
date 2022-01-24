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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {TYPE_1__* rq_disk; struct request_queue* q; scalar_t__ errors; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_BLKDEV ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct request*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct request *req)
{
	int error = req->errors ? -EIO : 0;
	struct request_queue *q = req->q;
	unsigned long flags;

	FUNC1(DBG_BLKDEV, "%s: request %p: %s\n", req->rq_disk->disk_name,
			req, error ? "failed" : "done");

	FUNC2(q->queue_lock, flags);
	FUNC0(req, error);
	FUNC3(q->queue_lock, flags);
}