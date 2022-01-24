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
 unsigned long long IO_BASE_64 ; 
 unsigned int ST0_IE ; 
 unsigned int ST0_KX ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned long long phys, unsigned char c)
{
	unsigned long long vaddr = IO_BASE_64 | phys;
	unsigned long tmp;
	unsigned int sr;

	sr = FUNC0();
	FUNC2((sr | ST0_KX) & ~ ST0_IE);
	FUNC1();

	__asm__ __volatile__ (
	"	.set	mips3		\n"
	"	ld	%0, %1		\n"
	"	sb	%2, (%0)	\n"
	"	.set	mips0		\n"
	: "=&r" (tmp)
	: "m" (vaddr), "r" (c));

	FUNC2(sr);
	FUNC1();
}