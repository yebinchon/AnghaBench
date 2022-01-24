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
typedef  int u_int ;
typedef  scalar_t__ u32 ;
struct sym_hcb {int dqueueget; scalar_t__* dqueue; } ;
struct sym_ccb {int dummy; } ;

/* Variables and functions */
 int MAX_QUEUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct sym_ccb* FUNC3 (struct sym_hcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sym_hcb*,struct sym_ccb*) ; 
 char* FUNC5 (struct sym_hcb*) ; 

__attribute__((used)) static int FUNC6 (struct sym_hcb *np)
{
	struct sym_ccb *cp;
	int i, n;
	u32 dsa;

	n = 0;
	i = np->dqueueget;

	/* MEMORY_READ_BARRIER(); */
	while (1) {
		dsa = FUNC2(np->dqueue[i]);
		if (!dsa)
			break;
		np->dqueue[i] = 0;
		if ((i = i+2) >= MAX_QUEUE*2)
			i = 0;

		cp = FUNC3(np, dsa);
		if (cp) {
			FUNC0();
			FUNC4 (np, cp);
			++n;
		}
		else
			FUNC1 ("%s: bad DSA (%x) in done queue.\n",
				FUNC5(np), (u_int) dsa);
	}
	np->dqueueget = i;

	return n;
}