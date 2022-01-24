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
struct TYPE_4__ {scalar_t__ slock; } ;
typedef  TYPE_1__ raw_spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ SHARED_PROCESSOR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(raw_spinlock_t *lock)
{
	while (lock->slock) {
		FUNC0();
		if (SHARED_PROCESSOR)
			FUNC2(lock);
	}
	FUNC1();
}