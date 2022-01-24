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
struct nv04_graph_priv {struct nv04_graph_chan** chan; } ;
struct nv04_graph_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nv04_graph_chan**) ; 
 int /*<<< orphan*/  NV04_PGRAPH_CTX_CONTROL ; 
 int /*<<< orphan*/  NV04_PGRAPH_CTX_USER ; 
 int FUNC1 (struct nv04_graph_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nv04_graph_chan *
FUNC2(struct nv04_graph_priv *priv)
{
	struct nv04_graph_chan *chan = NULL;
	if (FUNC1(priv, NV04_PGRAPH_CTX_CONTROL) & 0x00010000) {
		int chid = FUNC1(priv, NV04_PGRAPH_CTX_USER) >> 24;
		if (chid < FUNC0(priv->chan))
			chan = priv->chan[chid];
	}
	return chan;
}