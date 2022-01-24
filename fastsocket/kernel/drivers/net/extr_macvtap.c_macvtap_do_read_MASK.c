#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;
struct macvtap_queue {TYPE_1__ sk; } ;
struct kiocb {int dummy; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct macvtap_queue*,struct sk_buff*,struct iovec const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC8(struct macvtap_queue *q, struct kiocb *iocb,
			       const struct iovec *iv, unsigned long len,
			       int noblock)
{
	FUNC0(wait, current);
	struct sk_buff *skb;
	ssize_t ret = 0;

	FUNC1(q->sk.sk_sleep, &wait);
	while (len) {
		current->state = TASK_INTERRUPTIBLE;

		/* Read frames from the queue */
		skb = FUNC7(&q->sk.sk_receive_queue);
		if (!skb) {
			if (noblock) {
				ret = -EAGAIN;
				break;
			}
			if (FUNC6(current)) {
				ret = -ERESTARTSYS;
				break;
			}
			/* Nothing to read, let's sleep */
			FUNC5();
			continue;
		}
		ret = FUNC3(q, skb, iv, len);
		FUNC2(skb);
		break;
	}

	current->state = TASK_RUNNING;
	FUNC4(q->sk.sk_sleep, &wait);
	return ret;
}