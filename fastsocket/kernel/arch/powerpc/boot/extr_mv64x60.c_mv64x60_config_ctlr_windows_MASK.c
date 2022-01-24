#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_8__ {int lo; int size; } ;
struct TYPE_7__ {int lo; int size; } ;
struct TYPE_6__ {int lo; int size; } ;
struct TYPE_5__ {int lo; int size; } ;

/* Variables and functions */
 int MV64x60_CPU2MEM_WINDOWS ; 
 int MV64x60_CPU_BAR_ENABLE ; 
 int MV64x60_ENET2MEM_ACC_PROT_0 ; 
 int MV64x60_ENET2MEM_ACC_PROT_1 ; 
 int MV64x60_ENET2MEM_ACC_PROT_2 ; 
 int MV64x60_ENET2MEM_BAR_ENABLE ; 
 int MV64x60_IDMA2MEM_ACC_PROT_0 ; 
 int MV64x60_IDMA2MEM_ACC_PROT_1 ; 
 int MV64x60_IDMA2MEM_ACC_PROT_2 ; 
 int MV64x60_IDMA2MEM_ACC_PROT_3 ; 
 int MV64x60_IDMA2MEM_BAR_ENABLE ; 
 int MV64x60_MPSC2MEM_ACC_PROT_0 ; 
 int MV64x60_MPSC2MEM_ACC_PROT_1 ; 
 int MV64x60_MPSC2MEM_BAR_ENABLE ; 
 int MV64x60_MPSC2REGS_BASE ; 
 int FUNC0 (int*) ; 
 TYPE_4__* mv64x60_cpu2mem ; 
 int* mv64x60_dram_selects ; 
 TYPE_3__* mv64x60_enet2mem ; 
 TYPE_2__* mv64x60_idma2mem ; 
 TYPE_1__* mv64x60_mpsc2mem ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

void FUNC2(u8 *bridge_base, u8 *bridge_pbase,
		u8 is_coherent)
{
	u32 i, base, size, enables, prot = 0, snoop_bits = 0;

	/* Disable ctlr->mem windows */
	FUNC1((u32 *)(bridge_base + MV64x60_ENET2MEM_BAR_ENABLE), 0x3f);
	FUNC1((u32 *)(bridge_base + MV64x60_MPSC2MEM_BAR_ENABLE), 0xf);
	FUNC1((u32 *)(bridge_base + MV64x60_ENET2MEM_BAR_ENABLE), 0xff);

	if (is_coherent)
		snoop_bits = 0x2 << 12; /* Writeback */

	enables = FUNC0((u32 *)(bridge_base + MV64x60_CPU_BAR_ENABLE)) & 0xf;

	for (i=0; i<MV64x60_CPU2MEM_WINDOWS; i++) {
		if (enables & (1 << i)) /* Set means disabled */
			continue;

		base = FUNC0((u32 *)(bridge_base + mv64x60_cpu2mem[i].lo))
			<< 16;
		base |= snoop_bits | (mv64x60_dram_selects[i] << 8);
		size = FUNC0((u32 *)(bridge_base + mv64x60_cpu2mem[i].size))
			<< 16;
		prot |= (0x3 << (i << 1)); /* RW access */

		FUNC1((u32 *)(bridge_base + mv64x60_enet2mem[i].lo), base);
		FUNC1((u32 *)(bridge_base + mv64x60_enet2mem[i].size), size);
		FUNC1((u32 *)(bridge_base + mv64x60_mpsc2mem[i].lo), base);
		FUNC1((u32 *)(bridge_base + mv64x60_mpsc2mem[i].size), size);
		FUNC1((u32 *)(bridge_base + mv64x60_idma2mem[i].lo), base);
		FUNC1((u32 *)(bridge_base + mv64x60_idma2mem[i].size), size);
	}

	FUNC1((u32 *)(bridge_base + MV64x60_ENET2MEM_ACC_PROT_0), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_ENET2MEM_ACC_PROT_1), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_ENET2MEM_ACC_PROT_2), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_MPSC2MEM_ACC_PROT_0), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_MPSC2MEM_ACC_PROT_1), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_IDMA2MEM_ACC_PROT_0), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_IDMA2MEM_ACC_PROT_1), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_IDMA2MEM_ACC_PROT_2), prot);
	FUNC1((u32 *)(bridge_base + MV64x60_IDMA2MEM_ACC_PROT_3), prot);

	/* Set mpsc->bridge's reg window to the bridge's internal registers. */
	FUNC1((u32 *)(bridge_base + MV64x60_MPSC2REGS_BASE),
			(u32)bridge_pbase);

	FUNC1((u32 *)(bridge_base + MV64x60_ENET2MEM_BAR_ENABLE), enables);
	FUNC1((u32 *)(bridge_base + MV64x60_MPSC2MEM_BAR_ENABLE), enables);
	FUNC1((u32 *)(bridge_base + MV64x60_IDMA2MEM_BAR_ENABLE), enables);
}