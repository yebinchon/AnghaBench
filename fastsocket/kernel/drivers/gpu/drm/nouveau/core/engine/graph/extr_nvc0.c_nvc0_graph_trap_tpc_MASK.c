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
typedef  int u32 ;
struct nvc0_graph_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,char*,int,int,int,...) ; 
 int FUNC2 (struct nvc0_graph_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_graph_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct nvc0_graph_priv *priv, int gpc, int tpc)
{
	u32 stat = FUNC2(priv, FUNC0(gpc, tpc, 0x0508));

	if (stat & 0x00000001) {
		u32 trap = FUNC2(priv, FUNC0(gpc, tpc, 0x0224));
		FUNC1(priv, "GPC%d/TPC%d/TEX: 0x%08x\n", gpc, tpc, trap);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0224), 0xc0000000);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0508), 0x00000001);
		stat &= ~0x00000001;
	}

	if (stat & 0x00000002) {
		u32 trap0 = FUNC2(priv, FUNC0(gpc, tpc, 0x0644));
		u32 trap1 = FUNC2(priv, FUNC0(gpc, tpc, 0x064c));
		FUNC1(priv, "GPC%d/TPC%d/MP: 0x%08x 0x%08x\n",
			       gpc, tpc, trap0, trap1);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0644), 0x001ffffe);
		FUNC3(priv, FUNC0(gpc, tpc, 0x064c), 0x0000000f);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0508), 0x00000002);
		stat &= ~0x00000002;
	}

	if (stat & 0x00000004) {
		u32 trap = FUNC2(priv, FUNC0(gpc, tpc, 0x0084));
		FUNC1(priv, "GPC%d/TPC%d/POLY: 0x%08x\n", gpc, tpc, trap);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0084), 0xc0000000);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0508), 0x00000004);
		stat &= ~0x00000004;
	}

	if (stat & 0x00000008) {
		u32 trap = FUNC2(priv, FUNC0(gpc, tpc, 0x048c));
		FUNC1(priv, "GPC%d/TPC%d/L1C: 0x%08x\n", gpc, tpc, trap);
		FUNC3(priv, FUNC0(gpc, tpc, 0x048c), 0xc0000000);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0508), 0x00000008);
		stat &= ~0x00000008;
	}

	if (stat) {
		FUNC1(priv, "GPC%d/TPC%d/0x%08x: unknown\n", gpc, tpc, stat);
		FUNC3(priv, FUNC0(gpc, tpc, 0x0508), stat);
	}
}