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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nv50_mp_exec_error_names ; 
 TYPE_1__* FUNC1 (struct nv50_graph_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_graph_priv*,char*,int,...) ; 
 int FUNC3 (struct nv50_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC6(struct nv50_graph_priv *priv, int tpid, int display)
{
	u32 units = FUNC3(priv, 0x1540);
	u32 addr, mp10, status, pc, oplow, ophigh;
	int i;
	int mps = 0;
	for (i = 0; i < 4; i++) {
		if (!(units & 1 << (i+24)))
			continue;
		if (FUNC1(priv)->chipset < 0xa0)
			addr = 0x408200 + (tpid << 12) + (i << 7);
		else
			addr = 0x408100 + (tpid << 11) + (i << 7);
		mp10 = FUNC3(priv, addr + 0x10);
		status = FUNC3(priv, addr + 0x14);
		if (!status)
			continue;
		if (display) {
			FUNC3(priv, addr + 0x20);
			pc = FUNC3(priv, addr + 0x24);
			oplow = FUNC3(priv, addr + 0x70);
			ophigh = FUNC3(priv, addr + 0x74);
			FUNC2(priv, "TRAP_MP_EXEC - "
					"TP %d MP %d: ", tpid, i);
			FUNC0(nv50_mp_exec_error_names, status);
			FUNC5(" at %06x warp %d, opcode %08x %08x\n",
					pc&0xffffff, pc >> 24,
					oplow, ophigh);
		}
		FUNC4(priv, addr + 0x10, mp10);
		FUNC4(priv, addr + 0x14, 0);
		mps++;
	}
	if (!mps && display)
		FUNC2(priv, "TRAP_MP_EXEC - TP %d: "
				"No MPs claiming errors?\n", tpid);
}