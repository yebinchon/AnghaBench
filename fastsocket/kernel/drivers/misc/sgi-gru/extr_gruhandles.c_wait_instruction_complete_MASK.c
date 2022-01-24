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
typedef  enum mcs_op { ____Placeholder_mcs_op } mcs_op ;

/* Variables and functions */
 int CCHSTATUS_ACTIVE ; 
 int FUNC0 (void*) ; 
 unsigned long GRU_OPERATION_TIMEOUT ; 
 int OPT_STATS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int gru_options ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 

__attribute__((used)) static int FUNC5(void *h, enum mcs_op opc)
{
	int status;
	unsigned long start_time = FUNC2();

	while (1) {
		FUNC1();
		status = FUNC0(h);
		if (status != CCHSTATUS_ACTIVE)
			break;
		if (GRU_OPERATION_TIMEOUT < (FUNC2() - start_time)) {
			FUNC3(h);
			start_time = FUNC2();
		}
	}
	if (gru_options & OPT_STATS)
		FUNC4(opc, FUNC2() - start_time);
	return status;
}