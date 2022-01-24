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
typedef  int* vip ;

/* Variables and functions */
 int CIA_BROKEN_TBIA_BASE ; 
 int CIA_BROKEN_TBIA_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int PAGE_SHIFT ; 
 unsigned long* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long*) ; 

__attribute__((used)) static inline void
FUNC5(int window)
{
	unsigned long *ppte, pte;
	long i;

	/* Use minimal 1K map. */
	ppte = FUNC3(CIA_BROKEN_TBIA_SIZE, 32768, 0);
	pte = (FUNC4(ppte) >> (PAGE_SHIFT - 1)) | 1;

	for (i = 0; i < CIA_BROKEN_TBIA_SIZE / sizeof(unsigned long); ++i)
		ppte[i] = pte;

	*(vip)FUNC1(window) = CIA_BROKEN_TBIA_BASE | 3;
	*(vip)FUNC2(window)
	  = (CIA_BROKEN_TBIA_SIZE*1024 - 1) & 0xfff00000;
	*(vip)FUNC0(window) = FUNC4(ppte) >> 2;
}