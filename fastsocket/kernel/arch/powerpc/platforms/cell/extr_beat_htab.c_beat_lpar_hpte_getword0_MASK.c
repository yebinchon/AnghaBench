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
typedef  unsigned long u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long slot)
{
	unsigned long dword0;
	unsigned long lpar_rc;
	u64 dword[5];

	lpar_rc = FUNC1(0, slot & ~3UL, dword);

	dword0 = dword[slot&3];

	FUNC0(lpar_rc != 0);

	return dword0;
}