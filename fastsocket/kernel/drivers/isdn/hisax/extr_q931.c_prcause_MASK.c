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
struct TYPE_2__ {int nr; char* edescr; } ;

/* Variables and functions */
 int CVSIZE ; 
 TYPE_1__* cvlist ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int* FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static
int
FUNC3(char *dest, u_char * p)
{
	u_char *end;
	char *dp = dest;
	int i, cause;

	end = p + p[1] + 1;
	p += 2;
	dp += FUNC2(dp, "    coding ");
	dp += FUNC0(dp, *p, 7, 2);
	dp += FUNC2(dp, " location ");
	dp += FUNC0(dp, *p, 4, 4);
	*dp++ = '\n';
	p = FUNC1(p);

	cause = 0x7f & *p++;

	/* locate cause value */
	for (i = 0; i < CVSIZE; i++)
		if (cvlist[i].nr == cause)
			break;

	/* display cause value if it exists */
	if (i == CVSIZE)
		dp += FUNC2(dp, "Unknown cause type %x!\n", cause);
	else
		dp += FUNC2(dp, "  cause value %x : %s \n", cause, cvlist[i].edescr);

	while (!0) {
		if (p > end)
			break;
		dp += FUNC2(dp, "    diag attribute %d ", *p++ & 0x7f);
		dp += FUNC2(dp, " rej %d ", *p & 0x7f);
		if (*p & 0x80) {
			*dp++ = '\n';
			break;
		} else
			dp += FUNC2(dp, " av %d\n", (*++p) & 0x7f);
	}
	return (dp - dest);

}