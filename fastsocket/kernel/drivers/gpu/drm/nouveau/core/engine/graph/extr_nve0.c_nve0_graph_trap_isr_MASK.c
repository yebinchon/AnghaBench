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
struct nvc0_graph_priv {int rop_nr; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_graph_priv*,char*,int,int,int /*<<< orphan*/ ,int,...) ; 
 int FUNC3 (struct nvc0_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvc0_graph_priv*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvc0_graph_priv *priv, int chid, u64 inst,
		struct nouveau_object *engctx)
{
	u32 trap = FUNC3(priv, 0x400108);
	int rop;

	if (trap & 0x00000001) {
		u32 stat = FUNC3(priv, 0x404000);
		FUNC2(priv, "DISPATCH ch %d [0x%010llx %s] 0x%08x\n",
			 chid, inst, FUNC1(engctx), stat);
		FUNC4(priv, 0x404000, 0xc0000000);
		FUNC4(priv, 0x400108, 0x00000001);
		trap &= ~0x00000001;
	}

	if (trap & 0x00000010) {
		u32 stat = FUNC3(priv, 0x405840);
		FUNC2(priv, "SHADER ch %d [0x%010llx %s] 0x%08x\n",
			 chid, inst, FUNC1(engctx), stat);
		FUNC4(priv, 0x405840, 0xc0000000);
		FUNC4(priv, 0x400108, 0x00000010);
		trap &= ~0x00000010;
	}

	if (trap & 0x02000000) {
		for (rop = 0; rop < priv->rop_nr; rop++) {
			u32 statz = FUNC3(priv, FUNC0(rop, 0x070));
			u32 statc = FUNC3(priv, FUNC0(rop, 0x144));
			FUNC2(priv,
				 "ROP%d ch %d [0x%010llx %s] 0x%08x 0x%08x\n",
				 rop, chid, inst, FUNC1(engctx),
				 statz, statc);
			FUNC4(priv, FUNC0(rop, 0x070), 0xc0000000);
			FUNC4(priv, FUNC0(rop, 0x144), 0xc0000000);
		}
		FUNC4(priv, 0x400108, 0x02000000);
		trap &= ~0x02000000;
	}

	if (trap) {
		FUNC2(priv, "TRAP ch %d [0x%010llx %s] 0x%08x\n",
			 chid, inst, FUNC1(engctx), trap);
		FUNC4(priv, 0x400108, trap);
	}
}