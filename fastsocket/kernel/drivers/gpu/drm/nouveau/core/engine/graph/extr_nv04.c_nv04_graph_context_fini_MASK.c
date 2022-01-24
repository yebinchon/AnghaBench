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
struct nv04_graph_priv {int /*<<< orphan*/  lock; } ;
struct nv04_graph_chan {int /*<<< orphan*/  base; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PGRAPH_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct nv04_graph_chan* FUNC1 (struct nv04_graph_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_graph_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_graph_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_object *object, bool suspend)
{
	struct nv04_graph_priv *priv = (void *)object->engine;
	struct nv04_graph_chan *chan = (void *)object;
	unsigned long flags;

	FUNC4(&priv->lock, flags);
	FUNC3(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000000);
	if (FUNC1(priv) == chan)
		FUNC2(chan);
	FUNC3(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000001);
	FUNC5(&priv->lock, flags);

	return FUNC0(&chan->base, suspend);
}