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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long _PAGE_ASM ; 
 unsigned long _PAGE_KRE ; 
 unsigned long _PAGE_KWE ; 
 unsigned long _PAGE_VALID ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(unsigned long address, unsigned long phys_addr,
			 unsigned long size, unsigned long flags)
{
	pgprot_t prot;

	prot = FUNC0(_PAGE_VALID | _PAGE_ASM | _PAGE_KRE
			| _PAGE_KWE | flags);
	return FUNC1(address, address + size, phys_addr, prot);
}