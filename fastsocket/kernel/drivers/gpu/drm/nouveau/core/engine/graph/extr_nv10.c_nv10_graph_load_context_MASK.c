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
struct nv10_graph_priv {int dummy; } ;
struct nv10_graph_chan {int* nv10; int* nv17; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NV10_PGRAPH_CTX_CONTROL ; 
 int /*<<< orphan*/  NV10_PGRAPH_CTX_USER ; 
 int /*<<< orphan*/  NV10_PGRAPH_FFINTFC_ST2 ; 
 int /*<<< orphan*/  NV10_PGRAPH_GLOBALSTATE1 ; 
 int /*<<< orphan*/ * nv10_graph_ctx_regs ; 
 int /*<<< orphan*/  FUNC1 (struct nv10_graph_chan*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv10_graph_chan*) ; 
 struct nv10_graph_priv* FUNC3 (struct nv10_graph_chan*) ; 
 int /*<<< orphan*/ * nv17_graph_ctx_regs ; 
 TYPE_1__* FUNC4 (struct nv10_graph_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv10_graph_priv*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct nv10_graph_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nv10_graph_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct nv10_graph_chan *chan, int chid)
{
	struct nv10_graph_priv *priv = FUNC3(chan);
	u32 inst;
	int i;

	for (i = 0; i < FUNC0(nv10_graph_ctx_regs); i++)
		FUNC7(priv, nv10_graph_ctx_regs[i], chan->nv10[i]);

	if (FUNC4(priv)->chipset >= 0x17) {
		for (i = 0; i < FUNC0(nv17_graph_ctx_regs); i++)
			FUNC7(priv, nv17_graph_ctx_regs[i], chan->nv17[i]);
	}

	FUNC2(chan);

	inst = FUNC6(priv, NV10_PGRAPH_GLOBALSTATE1) & 0xffff;
	FUNC1(chan, chid, inst);

	FUNC7(priv, NV10_PGRAPH_CTX_CONTROL, 0x10010100);
	FUNC5(priv, NV10_PGRAPH_CTX_USER, 0xff000000, chid << 24);
	FUNC5(priv, NV10_PGRAPH_FFINTFC_ST2, 0x30000000, 0x00000000);
	return 0;
}