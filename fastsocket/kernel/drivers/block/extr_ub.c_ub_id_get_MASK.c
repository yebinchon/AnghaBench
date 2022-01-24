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

/* Variables and functions */
 int UB_MAX_HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int* ub_hostv ; 
 int /*<<< orphan*/  ub_lock ; 

__attribute__((used)) static int FUNC2(void)
{
	unsigned long flags;
	int i;

	FUNC0(&ub_lock, flags);
	for (i = 0; i < UB_MAX_HOSTS; i++) {
		if (ub_hostv[i] == 0) {
			ub_hostv[i] = 1;
			FUNC1(&ub_lock, flags);
			return i;
		}
	}
	FUNC1(&ub_lock, flags);
	return -1;
}