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
struct nv10_graph_priv {int dummy; } ;
struct nv10_graph_chan {void** nv17; void** nv10; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NV10_PGRAPH_CTX_CONTROL ; 
 int /*<<< orphan*/  NV10_PGRAPH_CTX_USER ; 
 int /*<<< orphan*/ * nv10_graph_ctx_regs ; 
 struct nv10_graph_priv* FUNC1 (struct nv10_graph_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv10_graph_chan*) ; 
 int /*<<< orphan*/ * nv17_graph_ctx_regs ; 
 TYPE_1__* FUNC3 (struct nv10_graph_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv10_graph_priv*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC5 (struct nv10_graph_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nv10_graph_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct nv10_graph_chan *chan)
{
	struct nv10_graph_priv *priv = FUNC1(chan);
	int i;

	for (i = 0; i < FUNC0(nv10_graph_ctx_regs); i++)
		chan->nv10[i] = FUNC5(priv, nv10_graph_ctx_regs[i]);

	if (FUNC3(priv)->chipset >= 0x17) {
		for (i = 0; i < FUNC0(nv17_graph_ctx_regs); i++)
			chan->nv17[i] = FUNC5(priv, nv17_graph_ctx_regs[i]);
	}

	FUNC2(chan);

	FUNC6(priv, NV10_PGRAPH_CTX_CONTROL, 0x10000000);
	FUNC4(priv, NV10_PGRAPH_CTX_USER, 0xff000000, 0x1f000000);
	return 0;
}