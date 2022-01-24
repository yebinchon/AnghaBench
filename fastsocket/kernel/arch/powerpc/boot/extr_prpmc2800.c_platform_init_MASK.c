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
struct elf_info {scalar_t__ elfoffset; scalar_t__ memsize; } ;
typedef  int /*<<< orphan*/  elfheader ;
struct TYPE_2__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  fixups; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEAP_SIZE ; 
 int KB ; 
 int MB ; 
 int _dtb_end ; 
 int _dtb_start ; 
 scalar_t__ _end ; 
 void* _vmlinux_end ; 
 void* _vmlinux_start ; 
 int /*<<< orphan*/  bridge_base ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,unsigned long) ; 
 int /*<<< orphan*/  gzstate ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,struct elf_info*) ; 
 TYPE_1__ platform_ops ; 
 int /*<<< orphan*/  prpmc2800_fixups ; 
 int /*<<< orphan*/  prpmc2800_reset ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ,int,int) ; 

void FUNC11(unsigned long r3, unsigned long r4, unsigned long r5,
                   unsigned long r6, unsigned long r7)
{
	struct elf_info ei;
	char *heap_start, *dtb;
	int dt_size = _dtb_end - _dtb_start;
	void *vmlinuz_addr = _vmlinux_start;
	unsigned long vmlinuz_size = _vmlinux_end - _vmlinux_start;
	char elfheader[256];

	if (dt_size <= 0) /* No fdt */
		FUNC0();

	/*
	 * Start heap after end of the kernel (after decompressed to
	 * address 0) or the end of the zImage, whichever is higher.
	 * That's so things allocated by simple_alloc won't overwrite
	 * any part of the zImage and the kernel won't overwrite the dtb
	 * when decompressed & relocated.
	 */
	FUNC3(&gzstate, vmlinuz_addr, vmlinuz_size);
	FUNC2(&gzstate, elfheader, sizeof(elfheader));

	if (!FUNC8(elfheader, &ei))
		FUNC0();

	heap_start = (char *)(ei.memsize + ei.elfoffset); /* end of kernel*/
	heap_start = FUNC5(heap_start, (char *)_end); /* end of zImage */

	if ((unsigned)FUNC10(heap_start, HEAP_SIZE, 2*KB, 16)
			> (128*MB))
		FUNC0();

	/* Relocate dtb to safe area past end of zImage & kernel */
	dtb = FUNC4(dt_size);
	if (!dtb)
		FUNC0();
	FUNC6(dtb, _dtb_start, dt_size);
	FUNC1(dtb);

	bridge_base = FUNC7();

	platform_ops.fixups = prpmc2800_fixups;
	platform_ops.exit = prpmc2800_reset;

	if (FUNC9() < 0)
		FUNC0();
}