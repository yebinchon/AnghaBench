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
struct nv04_graph_priv {int /*<<< orphan*/  lock; struct nv04_graph_chan** chan; } ;
struct nv04_graph_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PGRAPH_TRAPPED_ADDR ; 
 struct nv04_graph_chan* FUNC0 (struct nv04_graph_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_graph_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_graph_chan*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_graph_chan*) ; 
 int FUNC4 (struct nv04_graph_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct nv04_graph_priv *priv)
{
	struct nv04_graph_chan *prev = NULL;
	struct nv04_graph_chan *next = NULL;
	unsigned long flags;
	int chid;

	FUNC5(&priv->lock, flags);
	FUNC1(priv);

	/* If previous context is valid, we need to save it */
	prev = FUNC0(priv);
	if (prev)
		FUNC3(prev);

	/* load context for next channel */
	chid = (FUNC4(priv, NV04_PGRAPH_TRAPPED_ADDR) >> 24) & 0x0f;
	next = priv->chan[chid];
	if (next)
		FUNC2(next, chid);

	FUNC6(&priv->lock, flags);
}