#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* bitmap; int pagesize; } ;
typedef  TYPE_1__ memmap ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_MEM_RAM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC3(void)
{
	int i, bitmap_size;
	unsigned long mem_start = 0, mem_size = 0;
	memmap *bm;

	/* some free 64k */
	bm = (memmap *)FUNC0(0x28000);

	bitmap_size = FUNC2(bm);

	for (i = 0; i < bitmap_size; i++) {
		/* FIXME: very simplistically only add full sets of pages */
		if (bm->bitmap[i] == 0xff)
			mem_size += (8 * bm->pagesize);
		else if (!mem_size)
			mem_start += (8 * bm->pagesize);
		else {
			FUNC1(mem_start, mem_size, BOOT_MEM_RAM);
			mem_start += mem_size + (8 * bm->pagesize);
			mem_size = 0;
		}
	}
	if (mem_size)
		FUNC1(mem_start, mem_size, BOOT_MEM_RAM);
}