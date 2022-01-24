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
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * control_values_input ; 
 unsigned int FUNC1 (char*,unsigned int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int msk,
				     char *buf,unsigned int acnt)
{
	unsigned int idx,ccnt;
	unsigned int tcnt = 0;
	for (idx = 0; idx < FUNC0(control_values_input); idx++) {
		if (!((1 << idx) & msk)) continue;
		ccnt = FUNC1(buf+tcnt,
				 acnt-tcnt,
				 "%s%s",
				 (tcnt ? ", " : ""),
				 control_values_input[idx]);
		tcnt += ccnt;
	}
	return tcnt;
}