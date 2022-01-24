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
struct nvc0_grctx {int /*<<< orphan*/  chan; struct nvc0_graph_priv* priv; } ;
struct nvc0_graph_priv {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_graph_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvc0_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_graph_priv*,int,int) ; 

int
FUNC7(struct nvc0_grctx *info)
{
	struct nvc0_graph_priv *priv = info->priv;
	int i;

	/* trigger a context unload by unsetting the "next channel valid" bit
	 * and faking a context switch interrupt
	 */
	FUNC3(priv, 0x409b04, 0x80000000, 0x00000000);
	FUNC6(priv, 0x409000, 0x00000100);
	if (!FUNC5(priv, 0x409b00, 0x80000000, 0x00000000)) {
		FUNC2(priv, "grctx template channel unload timeout\n");
		return -EBUSY;
	}

	priv->data = FUNC0(priv->size, GFP_KERNEL);
	if (priv->data) {
		for (i = 0; i < priv->size; i += 4)
			priv->data[i / 4] = FUNC4(info->chan, 0x80000 + i);
	}

	FUNC1(NULL, &info->chan);
	return priv->data ? 0 : -ENOMEM;
}