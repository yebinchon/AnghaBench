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
 unsigned long FUNC1 (unsigned long,int) ; 
 unsigned long FUNC2 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC3 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long ea,
					   int psize, int ssize)
{
	unsigned long slot, vsid, va;

	vsid = FUNC1(ea, ssize);
	va = FUNC2(ea, vsid, ssize);

	slot = FUNC3(va, psize, ssize);
	FUNC0(slot == -1);

	FUNC4(slot, va, psize, ssize, 0);
}