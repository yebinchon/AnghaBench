#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_4__ {int attribute; } ;
typedef  TYPE_1__ efi_memory_desc_t ;

/* Variables and functions */
 int EFI_MEMORY_RUNTIME ; 
 unsigned long FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (unsigned long) ; 

u64
FUNC2 (unsigned long phys_addr, unsigned long size)
{
	unsigned long end = phys_addr + size;
	efi_memory_desc_t *md = FUNC1(phys_addr);
	u64 attr;

	if (!md)
		return 0;

	/*
	 * EFI_MEMORY_RUNTIME is not a memory attribute; it just tells
	 * the kernel that firmware needs this region mapped.
	 */
	attr = md->attribute & ~EFI_MEMORY_RUNTIME;
	do {
		unsigned long md_end = FUNC0(md);

		if (end <= md_end)
			return attr;

		md = FUNC1(md_end);
		if (!md || (md->attribute & ~EFI_MEMORY_RUNTIME) != attr)
			return 0;
	} while (md);
	return 0;	/* never reached */
}