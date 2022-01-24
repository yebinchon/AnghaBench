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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nv50_graph_priv {int dummy; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_object*) ; 
 int /*<<< orphan*/  nv50_graph_trap_ccache ; 
 int /*<<< orphan*/  nv50_graph_trap_m2mf ; 
 int /*<<< orphan*/  nv50_graph_trap_strmout ; 
 int /*<<< orphan*/  nv50_graph_trap_vfetch ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_graph_priv*,int,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_graph_priv*,char*,...) ; 
 int FUNC4 (struct nv50_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct nv50_graph_priv *priv, u32 display,
			int chid, u64 inst, struct nouveau_object *engctx)
{
	u32 status = FUNC4(priv, 0x400108);
	u32 ustatus;

	if (!status && display) {
		FUNC3(priv, "TRAP: no units reporting traps?\n");
		return 1;
	}

	/* DISPATCH: Relays commands to other units and handles NOTIFY,
	 * COND, QUERY. If you get a trap from it, the command is still stuck
	 * in DISPATCH and you need to do something about it. */
	if (status & 0x001) {
		ustatus = FUNC4(priv, 0x400804) & 0x7fffffff;
		if (!ustatus && display) {
			FUNC3(priv, "TRAP_DISPATCH - no ustatus?\n");
		}

		FUNC5(priv, 0x400500, 0x00000000);

		/* Known to be triggered by screwed up NOTIFY and COND... */
		if (ustatus & 0x00000001) {
			u32 addr = FUNC4(priv, 0x400808);
			u32 subc = (addr & 0x00070000) >> 16;
			u32 mthd = (addr & 0x00001ffc);
			u32 datal = FUNC4(priv, 0x40080c);
			u32 datah = FUNC4(priv, 0x400810);
			u32 class = FUNC4(priv, 0x400814);
			u32 r848 = FUNC4(priv, 0x400848);

			FUNC3(priv, "TRAP DISPATCH_FAULT\n");
			if (display && (addr & 0x80000000)) {
				FUNC3(priv,
					 "ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x%08x 400808 0x%08x 400848 0x%08x\n",
					 chid, inst,
					 FUNC1(engctx), subc,
					 class, mthd, datah, datal, addr, r848);
			} else
			if (display) {
				FUNC3(priv, "no stuck command?\n");
			}

			FUNC5(priv, 0x400808, 0);
			FUNC5(priv, 0x4008e8, FUNC4(priv, 0x4008e8) & 3);
			FUNC5(priv, 0x400848, 0);
			ustatus &= ~0x00000001;
		}

		if (ustatus & 0x00000002) {
			u32 addr = FUNC4(priv, 0x40084c);
			u32 subc = (addr & 0x00070000) >> 16;
			u32 mthd = (addr & 0x00001ffc);
			u32 data = FUNC4(priv, 0x40085c);
			u32 class = FUNC4(priv, 0x400814);

			FUNC3(priv, "TRAP DISPATCH_QUERY\n");
			if (display && (addr & 0x80000000)) {
				FUNC3(priv,
					 "ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x 40084c 0x%08x\n",
					 chid, inst,
					 FUNC1(engctx), subc,
					 class, mthd, data, addr);
			} else
			if (display) {
				FUNC3(priv, "no stuck command?\n");
			}

			FUNC5(priv, 0x40084c, 0);
			ustatus &= ~0x00000002;
		}

		if (ustatus && display) {
			FUNC3(priv, "TRAP_DISPATCH (unknown "
				      "0x%08x)\n", ustatus);
		}

		FUNC5(priv, 0x400804, 0xc0000000);
		FUNC5(priv, 0x400108, 0x001);
		status &= ~0x001;
		if (!status)
			return 0;
	}

	/* M2MF: Memory to memory copy engine. */
	if (status & 0x002) {
		u32 ustatus = FUNC4(priv, 0x406800) & 0x7fffffff;
		if (display) {
			FUNC3(priv, "TRAP_M2MF");
			FUNC0(nv50_graph_trap_m2mf, ustatus);
			FUNC6("\n");
			FUNC3(priv, "TRAP_M2MF %08x %08x %08x %08x\n",
				FUNC4(priv, 0x406804), FUNC4(priv, 0x406808),
				FUNC4(priv, 0x40680c), FUNC4(priv, 0x406810));

		}

		/* No sane way found yet -- just reset the bugger. */
		FUNC5(priv, 0x400040, 2);
		FUNC5(priv, 0x400040, 0);
		FUNC5(priv, 0x406800, 0xc0000000);
		FUNC5(priv, 0x400108, 0x002);
		status &= ~0x002;
	}

	/* VFETCH: Fetches data from vertex buffers. */
	if (status & 0x004) {
		u32 ustatus = FUNC4(priv, 0x400c04) & 0x7fffffff;
		if (display) {
			FUNC3(priv, "TRAP_VFETCH");
			FUNC0(nv50_graph_trap_vfetch, ustatus);
			FUNC6("\n");
			FUNC3(priv, "TRAP_VFETCH %08x %08x %08x %08x\n",
				FUNC4(priv, 0x400c00), FUNC4(priv, 0x400c08),
				FUNC4(priv, 0x400c0c), FUNC4(priv, 0x400c10));
		}

		FUNC5(priv, 0x400c04, 0xc0000000);
		FUNC5(priv, 0x400108, 0x004);
		status &= ~0x004;
	}

	/* STRMOUT: DirectX streamout / OpenGL transform feedback. */
	if (status & 0x008) {
		ustatus = FUNC4(priv, 0x401800) & 0x7fffffff;
		if (display) {
			FUNC3(priv, "TRAP_STRMOUT");
			FUNC0(nv50_graph_trap_strmout, ustatus);
			FUNC6("\n");
			FUNC3(priv, "TRAP_STRMOUT %08x %08x %08x %08x\n",
				FUNC4(priv, 0x401804), FUNC4(priv, 0x401808),
				FUNC4(priv, 0x40180c), FUNC4(priv, 0x401810));

		}

		/* No sane way found yet -- just reset the bugger. */
		FUNC5(priv, 0x400040, 0x80);
		FUNC5(priv, 0x400040, 0);
		FUNC5(priv, 0x401800, 0xc0000000);
		FUNC5(priv, 0x400108, 0x008);
		status &= ~0x008;
	}

	/* CCACHE: Handles code and c[] caches and fills them. */
	if (status & 0x010) {
		ustatus = FUNC4(priv, 0x405018) & 0x7fffffff;
		if (display) {
			FUNC3(priv, "TRAP_CCACHE");
			FUNC0(nv50_graph_trap_ccache, ustatus);
			FUNC6("\n");
			FUNC3(priv, "TRAP_CCACHE %08x %08x %08x %08x"
				     " %08x %08x %08x\n",
				FUNC4(priv, 0x405000), FUNC4(priv, 0x405004),
				FUNC4(priv, 0x405008), FUNC4(priv, 0x40500c),
				FUNC4(priv, 0x405010), FUNC4(priv, 0x405014),
				FUNC4(priv, 0x40501c));

		}

		FUNC5(priv, 0x405018, 0xc0000000);
		FUNC5(priv, 0x400108, 0x010);
		status &= ~0x010;
	}

	/* Unknown, not seen yet... 0x402000 is the only trap status reg
	 * remaining, so try to handle it anyway. Perhaps related to that
	 * unknown DMA slot on tesla? */
	if (status & 0x20) {
		ustatus = FUNC4(priv, 0x402000) & 0x7fffffff;
		if (display)
			FUNC3(priv, "TRAP_UNKC04 0x%08x\n", ustatus);
		FUNC5(priv, 0x402000, 0xc0000000);
		/* no status modifiction on purpose */
	}

	/* TEXTURE: CUDA texturing units */
	if (status & 0x040) {
		FUNC2(priv, 6, 0x408900, 0x408600, display,
				    "TRAP_TEXTURE");
		FUNC5(priv, 0x400108, 0x040);
		status &= ~0x040;
	}

	/* MP: CUDA execution engines. */
	if (status & 0x080) {
		FUNC2(priv, 7, 0x408314, 0x40831c, display,
				    "TRAP_MP");
		FUNC5(priv, 0x400108, 0x080);
		status &= ~0x080;
	}

	/* TPDMA:  Handles TP-initiated uncached memory accesses:
	 * l[], g[], stack, 2d surfaces, render targets. */
	if (status & 0x100) {
		FUNC2(priv, 8, 0x408e08, 0x408708, display,
				    "TRAP_TPDMA");
		FUNC5(priv, 0x400108, 0x100);
		status &= ~0x100;
	}

	if (status) {
		if (display)
			FUNC3(priv, "TRAP: unknown 0x%08x\n", status);
		FUNC5(priv, 0x400108, status);
	}

	return 1;
}