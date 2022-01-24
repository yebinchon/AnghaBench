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
struct entropy_store {int last_data_init; TYPE_1__* poolinfo; int /*<<< orphan*/  lock; scalar_t__ entropy_count; } ;
typedef  int /*<<< orphan*/  now ;
typedef  unsigned long ktime_t ;
typedef  int /*<<< orphan*/  flags ;
struct TYPE_2__ {int poolwords; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct entropy_store*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long* FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct entropy_store *r)
{
	int i;
	ktime_t now;
	unsigned long flags;

	FUNC3(&r->lock, flags);
	r->entropy_count = 0;
	r->last_data_init = false;
	FUNC4(&r->lock, flags);

	now = FUNC1();
	FUNC2(r, &now, sizeof(now));
	for (i = r->poolinfo->poolwords; i; i--) {
		if (!FUNC0(&flags))
			break;
		FUNC2(r, &flags, sizeof(flags));
	}
	FUNC2(r, FUNC5(), sizeof(*(FUNC5())));
}