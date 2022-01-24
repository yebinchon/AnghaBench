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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_COUNTER ; 
 int MAX_RETRIES ; 
 scalar_t__ SMI_TRESHOLD ; 
 scalar_t__ ULLONG_MAX ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(u64 *p, int hpet)
{
	u64 t1, t2;
	int i;

	for (i = 0; i < MAX_RETRIES; i++) {
		t1 = FUNC1();
		if (hpet)
			*p = FUNC2(HPET_COUNTER) & 0xFFFFFFFF;
		else
			*p = FUNC0();
		t2 = FUNC1();
		if ((t2 - t1) < SMI_TRESHOLD)
			return t2;
	}
	return ULLONG_MAX;
}