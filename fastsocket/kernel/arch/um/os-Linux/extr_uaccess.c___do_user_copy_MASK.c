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
typedef  int /*<<< orphan*/  jmp_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void FUNC1 (void*,void const*,int) ; 

unsigned long FUNC2(void *to, const void *from, int n,
			     void **fault_addr, jmp_buf **fault_catcher,
			     void (*op)(void *to, const void *from,
					int n), int *faulted_out)
{
	unsigned long *faddrp = (unsigned long *) fault_addr, ret;

	jmp_buf jbuf;
	*fault_catcher = &jbuf;
	if (FUNC0(&jbuf) == 0) {
		(*op)(to, from, n);
		ret = 0;
		*faulted_out = 0;
	}
	else {
		ret = *faddrp;
		*faulted_out = 1;
	}
	*fault_addr = NULL;
	*fault_catcher = NULL;
	return ret;
}