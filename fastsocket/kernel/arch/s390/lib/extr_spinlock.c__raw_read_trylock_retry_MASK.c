#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int lock; } ;
typedef  TYPE_1__ raw_rwlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (int*,unsigned int,unsigned int) ; 
 int spin_retry ; 

int FUNC2(raw_rwlock_t *rw)
{
	unsigned int old;
	int count = spin_retry;

	while (count-- > 0) {
		if (!FUNC0(rw))
			continue;
		old = rw->lock & 0x7fffffffU;
		if (FUNC1(&rw->lock, old, old + 1) == old)
			return 1;
	}
	return 0;
}