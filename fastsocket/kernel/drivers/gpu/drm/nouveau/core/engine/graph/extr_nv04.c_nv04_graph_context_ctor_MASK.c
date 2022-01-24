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
typedef  int /*<<< orphan*/  u32 ;
struct nv04_graph_priv {int /*<<< orphan*/  lock; struct nv04_graph_chan** chan; } ;
struct nv04_graph_chan {size_t chid; int /*<<< orphan*/  base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int /*<<< orphan*/  refcount; } ;
struct nouveau_fifo_chan {size_t chid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PGRAPH_DEBUG_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (struct nv04_graph_chan*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,struct nv04_graph_chan**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nouveau_object* FUNC4 (struct nv04_graph_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *data, u32 size,
			struct nouveau_object **pobject)
{
	struct nouveau_fifo_chan *fifo = (void *)parent;
	struct nv04_graph_priv *priv = (void *)engine;
	struct nv04_graph_chan *chan;
	unsigned long flags;
	int ret;

	ret = FUNC2(parent, engine, oclass, 0, &chan);
	*pobject = FUNC4(chan);
	if (ret)
		return ret;

	FUNC5(&priv->lock, flags);
	if (priv->chan[fifo->chid]) {
		*pobject = FUNC4(priv->chan[fifo->chid]);
		FUNC0(&(*pobject)->refcount);
		FUNC6(&priv->lock, flags);
		FUNC3(&chan->base);
		return 1;
	}

	*FUNC1(chan, NV04_PGRAPH_DEBUG_3) = 0xfad4ff31;

	priv->chan[fifo->chid] = chan;
	chan->chid = fifo->chid;
	FUNC6(&priv->lock, flags);
	return 0;
}