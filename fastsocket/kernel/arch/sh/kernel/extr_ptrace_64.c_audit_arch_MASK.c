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
 int EM_SH ; 
 int __AUDIT_ARCH_64BIT ; 
 int __AUDIT_ARCH_LE ; 

__attribute__((used)) static inline int FUNC0(void)
{
	int arch = EM_SH;

#ifdef CONFIG_64BIT
	arch |= __AUDIT_ARCH_64BIT;
#endif
#ifdef CONFIG_CPU_LITTLE_ENDIAN
	arch |= __AUDIT_ARCH_LE;
#endif

	return arch;
}