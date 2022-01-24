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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  QUEUE_FLAG_SAME_COMP ; 
 int /*<<< orphan*/  QUEUE_FLAG_SAME_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct request_queue *q, const char *page, size_t count)
{
	ssize_t ret = -EINVAL;
#if defined(CONFIG_USE_GENERIC_SMP_HELPERS)
	unsigned long val;

	ret = queue_var_store(&val, page, count);
	spin_lock_irq(q->queue_lock);
	if (val == 2) {
		queue_flag_set(QUEUE_FLAG_SAME_COMP, q);
		queue_flag_set(QUEUE_FLAG_SAME_FORCE, q);
	} else if (val == 1) {
		queue_flag_set(QUEUE_FLAG_SAME_COMP, q);
		queue_flag_clear(QUEUE_FLAG_SAME_FORCE, q);
	} else if (val == 0) {
		queue_flag_clear(QUEUE_FLAG_SAME_COMP, q);
		queue_flag_clear(QUEUE_FLAG_SAME_FORCE, q);
	}
	spin_unlock_irq(q->queue_lock);
#endif
	return ret;
}