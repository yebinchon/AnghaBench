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
 scalar_t__ ONE_MB ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ RAM_END ; 
 scalar_t__ FUNC1 (unsigned long,scalar_t__) ; 
 scalar_t__ _end ; 
 scalar_t__ claim_base ; 
 scalar_t__ FUNC2 (scalar_t__,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static void *FUNC4(unsigned long size)
{
	unsigned long addr = 0;

	if (claim_base == 0)
		claim_base = FUNC1((unsigned long)_end, ONE_MB);

	for(; claim_base < RAM_END; claim_base += ONE_MB) {
#ifdef DEBUG
		printf("    trying: 0x%08lx\n\r", claim_base);
#endif
		addr = (unsigned long)FUNC2(claim_base, size, 0);
		if ((void *)addr != (void *)-1)
			break;
	}
	if (addr == 0)
		return NULL;
	claim_base = FUNC0(claim_base + size);
	return (void *)addr;
}