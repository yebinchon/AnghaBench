#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_head {struct list_head* next; } ;
typedef  TYPE_1__* pdabusb_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4 (pdabusb_t s, struct list_head *dst, struct list_head *src)
{
	unsigned long flags;
	struct list_head *tmp;
	int ret = 0;

	FUNC2 (&s->lock, flags);

	if (FUNC0 (src)) {
		// no elements in source buffer
		ret = -1;
		goto err;
	}
	tmp = src->next;
	FUNC1 (tmp, dst);

  err:	FUNC3 (&s->lock, flags);
	return ret;
}