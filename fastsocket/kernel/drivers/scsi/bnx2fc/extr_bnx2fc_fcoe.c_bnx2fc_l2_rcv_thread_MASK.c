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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fcoe_percpu_s {TYPE_1__ fcoe_rx_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void *arg)
{
	struct fcoe_percpu_s *bg = arg;
	struct sk_buff *skb;

	FUNC6(current, -20);
	FUNC5(TASK_INTERRUPTIBLE);
	while (!FUNC3()) {
		FUNC4();
		FUNC7(&bg->fcoe_rx_list.lock);
		while ((skb = FUNC1(&bg->fcoe_rx_list)) != NULL) {
			FUNC8(&bg->fcoe_rx_list.lock);
			FUNC2(skb);
			FUNC7(&bg->fcoe_rx_list.lock);
		}
		FUNC0(TASK_INTERRUPTIBLE);
		FUNC8(&bg->fcoe_rx_list.lock);
	}
	FUNC0(TASK_RUNNING);
	return 0;
}