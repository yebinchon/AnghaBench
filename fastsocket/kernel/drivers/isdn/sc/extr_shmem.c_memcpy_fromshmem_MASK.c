#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned char shmem_magic; size_t shmem_pgport; int /*<<< orphan*/  devicename; int /*<<< orphan*/  lock; scalar_t__ rambase; int /*<<< orphan*/ * ioport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t SRAM_PAGESIZE ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 TYPE_1__** sc_adapter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(int card, void *dest, const void *src, size_t n)
{
	unsigned long flags;
	unsigned char ch;

	if(!FUNC0(card)) {
		FUNC3("Invalid param: %d is not a valid card id\n", card);
		return;
	}

	if(n > SRAM_PAGESIZE) {
		return;
	}

	/*
	 * determine the page to load from the address
	 */
	ch = (unsigned long) src / SRAM_PAGESIZE;
	FUNC3("%s: loaded page %d\n", sc_adapter[card]->devicename,ch);
	
	
	/*
	 * Block interrupts and load the page
	 */
	FUNC4(&sc_adapter[card]->lock, flags);

	FUNC2(((sc_adapter[card]->shmem_magic + ch * SRAM_PAGESIZE) >> 14) | 0x80,
		sc_adapter[card]->ioport[sc_adapter[card]->shmem_pgport]);
	FUNC1(dest,(void *)(sc_adapter[card]->rambase +
		((unsigned long) src % 0x4000)), n);
	FUNC5(&sc_adapter[card]->lock, flags);
	FUNC3("%s: set page to %#x\n",sc_adapter[card]->devicename,
		((sc_adapter[card]->shmem_magic + ch * SRAM_PAGESIZE)>>14)|0x80);
/*	pr_debug("%s: copying %d bytes from %#x to %#x\n",
		sc_adapter[card]->devicename, n,
		sc_adapter[card]->rambase + ((unsigned long) src %0x4000), (unsigned long) dest); */
}