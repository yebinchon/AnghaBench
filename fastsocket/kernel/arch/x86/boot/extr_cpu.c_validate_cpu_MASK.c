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
typedef  int u32 ;

/* Variables and functions */
 int RHNCAPINTS ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int**) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ x86_cap_strs ; 

int FUNC5(void)
{
	u32 *err_flags;
	int cpu_level, req_level;
	const unsigned char *msg_strs;

	FUNC0(&cpu_level, &req_level, &err_flags);

	if (cpu_level < req_level) {
		FUNC2("This kernel requires an %s CPU, ",
		       FUNC1(req_level));
		FUNC2("but only detected an %s CPU.\n",
		       FUNC1(cpu_level));
		return -1;
	}

	if (err_flags) {
		int i, j;
		FUNC4("This kernel requires the following features "
		     "not present on the CPU:\n");

		msg_strs = (const unsigned char *)x86_cap_strs;

		for (i = 0; i < RHNCAPINTS; i++) {
			u32 e = err_flags[i];

			for (j = 0; j < 32; j++) {
				if (msg_strs[0] < i ||
				    (msg_strs[0] == i && msg_strs[1] < j)) {
					/* Skip to the next string */
					msg_strs += 2;
					while (*msg_strs++)
						;
				}
				if (e & 1) {
					if (msg_strs[0] == i &&
					    msg_strs[1] == j &&
					    msg_strs[2])
						FUNC2("%s ", msg_strs+2);
					else
						FUNC2("%d:%d ", i, j);
				}
				e >>= 1;
			}
		}
		FUNC3('\n');
		return -1;
	} else {
		return 0;
	}
}