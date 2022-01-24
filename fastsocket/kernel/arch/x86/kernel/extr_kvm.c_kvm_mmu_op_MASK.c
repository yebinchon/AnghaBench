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
 int /*<<< orphan*/  KVM_HC_MMU_OP ; 
 unsigned long FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(void *buffer, unsigned len)
{
	int r;
	unsigned long a1, a2;

	do {
		a1 = FUNC0(buffer);
		a2 = 0;   /* on i386 __pa() always returns <4G */
		r = FUNC1(KVM_HC_MMU_OP, len, a1, a2);
		buffer += r;
		len -= r;
	} while (len);
}