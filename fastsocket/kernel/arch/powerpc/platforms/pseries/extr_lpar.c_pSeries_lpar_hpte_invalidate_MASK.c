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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  H_AVPN ; 
 unsigned long H_NOT_FOUND ; 
 unsigned long H_SUCCESS ; 
 unsigned long FUNC1 (unsigned long,int,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,int,int) ; 

__attribute__((used)) static void FUNC4(unsigned long slot, unsigned long va,
					 int psize, int ssize, int local)
{
	unsigned long want_v;
	unsigned long lpar_rc;
	unsigned long dummy1, dummy2;

	FUNC3("    inval : slot=%lx, va=%016lx, psize: %d, local: %d\n",
		 slot, va, psize, local);

	want_v = FUNC1(va, psize, ssize);
	lpar_rc = FUNC2(H_AVPN, slot, want_v, &dummy1, &dummy2);
	if (lpar_rc == H_NOT_FOUND)
		return;

	FUNC0(lpar_rc != H_SUCCESS);
}