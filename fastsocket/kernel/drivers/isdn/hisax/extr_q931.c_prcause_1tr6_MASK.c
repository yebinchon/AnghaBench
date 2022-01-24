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
typedef  int u_char ;
struct TYPE_2__ {int nr; char* descr; } ;

/* Variables and functions */
 TYPE_1__* cause_1tr6 ; 
 int cause_1tr6_len ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC2(char *dest, u_char * p)
{
	char *dp = dest;
	int i, cause;

	p++;
	if (0 == *p) {
		dp += FUNC1(dp, "   OK (cause length=0)\n");
		return (dp - dest);
	} else if (*p > 1) {
		dp += FUNC1(dp, "    coding ");
		dp += FUNC0(dp, p[2], 7, 2);
		dp += FUNC1(dp, " location ");
		dp += FUNC0(dp, p[2], 4, 4);
		*dp++ = '\n';
	}
	p++;
	cause = 0x7f & *p;

	/* locate cause value */
	for (i = 0; i < cause_1tr6_len; i++)
		if (cause_1tr6[i].nr == cause)
			break;

	/* display cause value if it exists */
	if (i == cause_1tr6_len)
		dp += FUNC1(dp, "Unknown cause type %x!\n", cause);
	else
		dp += FUNC1(dp, "  cause value %x : %s \n", cause, cause_1tr6[i].descr);

	return (dp - dest);

}