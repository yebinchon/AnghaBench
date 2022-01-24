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
typedef  int /*<<< orphan*/  u32 ;
struct nv10_graph_priv {int /*<<< orphan*/  lock; struct nv10_graph_chan** chan; } ;
struct nv10_graph_chan {int chid; int /*<<< orphan*/  base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int /*<<< orphan*/  refcount; } ;
struct nouveau_fifo_chan {size_t chid; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int NV03_PGRAPH_XY_LOGIC_MISC0 ; 
 int NV10_PGRAPH_CTX_USER ; 
 int NV10_PGRAPH_DEBUG_4 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,struct nv10_graph_chan**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nv10_graph_chan*) ; 
 TYPE_1__* FUNC6 (struct nv10_graph_priv*) ; 
 struct nouveau_object* FUNC7 (struct nv10_graph_chan*) ; 
 int FUNC8 (struct nv10_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC11(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *data, u32 size,
			struct nouveau_object **pobject)
{
	struct nouveau_fifo_chan *fifo = (void *)parent;
	struct nv10_graph_priv *priv = (void *)engine;
	struct nv10_graph_chan *chan;
	unsigned long flags;
	int ret;

	ret = FUNC3(parent, engine, oclass, 0, &chan);
	*pobject = FUNC7(chan);
	if (ret)
		return ret;

	FUNC9(&priv->lock, flags);
	if (priv->chan[fifo->chid]) {
		*pobject = FUNC7(priv->chan[fifo->chid]);
		FUNC2(&(*pobject)->refcount);
		FUNC10(&priv->lock, flags);
		FUNC4(&chan->base);
		return 1;
	}

	FUNC1(0x00400e88, 0x08000000);
	FUNC1(0x00400e9c, 0x4b7fffff);
	FUNC1(NV03_PGRAPH_XY_LOGIC_MISC0, 0x0001ffff);
	FUNC1(0x00400e10, 0x00001000);
	FUNC1(0x00400e14, 0x00001000);
	FUNC1(0x00400e30, 0x00080008);
	FUNC1(0x00400e34, 0x00080008);
	if (FUNC6(priv)->chipset >= 0x17) {
		/* is it really needed ??? */
		FUNC0(NV10_PGRAPH_DEBUG_4,
					FUNC8(priv, NV10_PGRAPH_DEBUG_4));
		FUNC0(0x004006b0, FUNC8(priv, 0x004006b0));
		FUNC0(0x00400eac, 0x0fff0000);
		FUNC0(0x00400eb0, 0x0fff0000);
		FUNC0(0x00400ec0, 0x00000080);
		FUNC0(0x00400ed0, 0x00000080);
	}
	FUNC1(NV10_PGRAPH_CTX_USER, chan->chid << 24);

	FUNC5(chan);

	priv->chan[fifo->chid] = chan;
	chan->chid = fifo->chid;
	FUNC10(&priv->lock, flags);
	return 0;
}