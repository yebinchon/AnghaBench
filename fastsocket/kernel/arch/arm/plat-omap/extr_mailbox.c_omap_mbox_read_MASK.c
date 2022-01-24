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
struct request {scalar_t__ special; } ;
struct omap_mbox {TYPE_1__* rxq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ mbox_msg_t ;
struct TYPE_2__ {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 struct omap_mbox* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_mbox*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,char,char,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr, char *buf)
{
	unsigned long flags;
	struct request *rq;
	mbox_msg_t *p = (mbox_msg_t *) buf;
	struct omap_mbox *mbox = FUNC2(dev);
	struct request_queue *q = mbox->rxq->queue;

	while (1) {
		FUNC6(q->queue_lock, flags);
		rq = FUNC1(q);
		FUNC7(q->queue_lock, flags);

		if (!rq)
			break;

		*p = (mbox_msg_t)rq->special;

		FUNC0(rq, 0);

		if (FUNC8(FUNC3(mbox, *p))) {
			FUNC5("mbox: Illegal seq bit!(%08x) ignored\n", *p);
			continue;
		}
		p++;
	}

	FUNC4("%02x %02x %02x %02x\n", buf[0], buf[1], buf[2], buf[3]);

	return (size_t) ((char *)p - buf);
}