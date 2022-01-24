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
 long H_BUSY ; 
 scalar_t__ FUNC0 (long) ; 
 long H_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 long FUNC4 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static long FUNC5(unsigned long opcode,
				    unsigned long arg1,
				    unsigned long arg2,
				    unsigned long arg3,
				    unsigned long arg4,
				    unsigned long arg5,
				    unsigned long arg6,
				    unsigned long arg7)
{
	long ret;
	int i, sleep_msecs;

	for (i = 0; i < 5; i++) {
		ret = FUNC4(opcode, arg1, arg2, arg3, arg4,
					 arg5, arg6, arg7);

		if (FUNC0(ret)) {
			sleep_msecs = FUNC2(ret);
			FUNC3(sleep_msecs);
			continue;
		}

		if (ret < H_SUCCESS)
			FUNC1("opcode=%lx ret=%lx"
				   " arg1=%lx arg2=%lx arg3=%lx arg4=%lx"
				   " arg5=%lx arg6=%lx arg7=%lx ",
				   opcode, ret,
				   arg1, arg2, arg3, arg4, arg5,
				   arg6, arg7);

		return ret;
	}

	return H_BUSY;
}