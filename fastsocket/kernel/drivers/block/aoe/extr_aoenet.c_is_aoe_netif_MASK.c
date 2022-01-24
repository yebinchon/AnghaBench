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
struct net_device {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  WHITESPACE ; 
 char* aoe_iflist ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct net_device *ifp)
{
	register char *p, *q;
	register int len;

	if (aoe_iflist[0] == '\0')
		return 1;

	p = aoe_iflist + FUNC3(aoe_iflist, WHITESPACE);
	for (; *p; p = q + FUNC3(q, WHITESPACE)) {
		q = p + FUNC0(p, WHITESPACE);
		if (q != p)
			len = q - p;
		else
			len = FUNC1(p); /* last token in aoe_iflist */

		if (FUNC1(ifp->name) == len && !FUNC2(ifp->name, p, len))
			return 1;
		if (q == p)
			break;
	}

	return 0;
}