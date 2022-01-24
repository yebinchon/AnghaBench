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
typedef  int u64 ;

/* Variables and functions */
 int GPR_MASK ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int*) ; 

__attribute__((used)) static inline int FUNC2(u64 id)
{
	int i = -1;
	char str[3];

	if ((id & GPR_MASK) == FUNC0("GPR")) {
		/* get the digits at the end */
		id &= ~GPR_MASK;
		id >>= 24;
		str[2] = '\0';
		str[1] = id & 0xff;
		str[0] = (id >> 8) & 0xff;
		FUNC1(str, "%d", &i);
		if (i > 31)
			i = -1;
	}
	return i;
}