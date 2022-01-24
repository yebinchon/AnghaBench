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
 unsigned long H_SUCCESS ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 unsigned long FUNC2 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC3 (unsigned long,int,int) ; 
 unsigned long FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long newpp,
					     unsigned long ea,
					     int psize, int ssize)
{
	unsigned long lpar_rc, slot, vsid, va, flags;

	vsid = FUNC1(ea, ssize);
	va = FUNC2(ea, vsid, ssize);

	slot = FUNC3(va, psize, ssize);
	FUNC0(slot == -1);

	flags = newpp & 7;
	lpar_rc = FUNC4(flags, slot, 0);

	FUNC0(lpar_rc != H_SUCCESS);
}