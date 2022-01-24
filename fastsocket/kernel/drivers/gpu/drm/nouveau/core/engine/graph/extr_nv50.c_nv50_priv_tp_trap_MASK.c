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
typedef  int u32 ;
struct nv50_graph_priv {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_graph_priv*,int,int) ; 
 TYPE_1__* FUNC1 (struct nv50_graph_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_graph_priv*,char*,...) ; 
 int FUNC3 (struct nv50_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_graph_priv*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_graph_priv*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct nv50_graph_priv *priv, int type, u32 ustatus_old,
		u32 ustatus_new, int display, const char *name)
{
	int tps = 0;
	u32 units = FUNC3(priv, 0x1540);
	int i, r;
	u32 ustatus_addr, ustatus;
	for (i = 0; i < 16; i++) {
		if (!(units & (1 << i)))
			continue;
		if (FUNC1(priv)->chipset < 0xa0)
			ustatus_addr = ustatus_old + (i << 12);
		else
			ustatus_addr = ustatus_new + (i << 11);
		ustatus = FUNC3(priv, ustatus_addr) & 0x7fffffff;
		if (!ustatus)
			continue;
		tps++;
		switch (type) {
		case 6: /* texture error... unknown for now */
			if (display) {
				FUNC2(priv, "magic set %d:\n", i);
				for (r = ustatus_addr + 4; r <= ustatus_addr + 0x10; r += 4)
					FUNC2(priv, "\t0x%08x: 0x%08x\n", r,
						FUNC3(priv, r));
			}
			break;
		case 7: /* MP error */
			if (ustatus & 0x04030000) {
				FUNC0(priv, i, display);
				ustatus &= ~0x04030000;
			}
			break;
		case 8: /* TPDMA error */
			{
			u32 e0c = FUNC3(priv, ustatus_addr + 4);
			u32 e10 = FUNC3(priv, ustatus_addr + 8);
			u32 e14 = FUNC3(priv, ustatus_addr + 0xc);
			u32 e18 = FUNC3(priv, ustatus_addr + 0x10);
			u32 e1c = FUNC3(priv, ustatus_addr + 0x14);
			u32 e20 = FUNC3(priv, ustatus_addr + 0x18);
			u32 e24 = FUNC3(priv, ustatus_addr + 0x1c);
			/* 2d engine destination */
			if (ustatus & 0x00000010) {
				if (display) {
					FUNC2(priv, "TRAP_TPDMA_2D - TP %d - Unknown fault at address %02x%08x\n",
							i, e14, e10);
					FUNC2(priv, "TRAP_TPDMA_2D - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\n",
							i, e0c, e18, e1c, e20, e24);
				}
				ustatus &= ~0x00000010;
			}
			/* Render target */
			if (ustatus & 0x00000040) {
				if (display) {
					FUNC2(priv, "TRAP_TPDMA_RT - TP %d - Unknown fault at address %02x%08x\n",
							i, e14, e10);
					FUNC2(priv, "TRAP_TPDMA_RT - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\n",
							i, e0c, e18, e1c, e20, e24);
				}
				ustatus &= ~0x00000040;
			}
			/* CUDA memory: l[], g[] or stack. */
			if (ustatus & 0x00000080) {
				if (display) {
					if (e18 & 0x80000000) {
						/* g[] read fault? */
						FUNC2(priv, "TRAP_TPDMA - TP %d - Global read fault at address %02x%08x\n",
								i, e14, e10 | ((e18 >> 24) & 0x1f));
						e18 &= ~0x1f000000;
					} else if (e18 & 0xc) {
						/* g[] write fault? */
						FUNC2(priv, "TRAP_TPDMA - TP %d - Global write fault at address %02x%08x\n",
								i, e14, e10 | ((e18 >> 7) & 0x1f));
						e18 &= ~0x00000f80;
					} else {
						FUNC2(priv, "TRAP_TPDMA - TP %d - Unknown CUDA fault at address %02x%08x\n",
								i, e14, e10);
					}
					FUNC2(priv, "TRAP_TPDMA - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\n",
							i, e0c, e18, e1c, e20, e24);
				}
				ustatus &= ~0x00000080;
			}
			}
			break;
		}
		if (ustatus) {
			if (display)
				FUNC2(priv, "%s - TP%d: Unhandled ustatus 0x%08x\n", name, i, ustatus);
		}
		FUNC5(priv, ustatus_addr, 0xc0000000);
	}

	if (!tps && display)
		FUNC4(priv, "%s - No TPs claiming errors?\n", name);
}