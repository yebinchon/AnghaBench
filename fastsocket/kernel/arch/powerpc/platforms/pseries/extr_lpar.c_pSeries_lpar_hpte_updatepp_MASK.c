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
 unsigned long H_AVPN ; 
 unsigned long H_NOT_FOUND ; 
 unsigned long H_SUCCESS ; 
 unsigned long FUNC1 (unsigned long,int,int) ; 
 unsigned long FUNC2 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static long FUNC4(unsigned long slot,
				       unsigned long newpp,
				       unsigned long va,
				       int psize, int ssize, int local)
{
	unsigned long lpar_rc;
	unsigned long flags = (newpp & 7) | H_AVPN;
	unsigned long want_v;

	want_v = FUNC1(va, psize, ssize);

	FUNC3("    update: avpnv=%016lx, hash=%016lx, f=%lx, psize: %d ...",
		 want_v, slot, flags, psize);

	lpar_rc = FUNC2(flags, slot, want_v);

	if (lpar_rc == H_NOT_FOUND) {
		FUNC3("not found !\n");
		return -1;
	}

	FUNC3("ok\n");

	FUNC0(lpar_rc != H_SUCCESS);

	return 0;
}