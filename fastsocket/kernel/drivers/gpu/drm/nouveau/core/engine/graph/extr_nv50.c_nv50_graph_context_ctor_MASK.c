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
struct nv50_graph_priv {int /*<<< orphan*/  size; } ;
struct nv50_graph_chan {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nv50_graph_chan**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_graph_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_graph_chan*) ; 
 struct nouveau_object* FUNC4 (struct nv50_graph_chan*) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *data, u32 size,
			struct nouveau_object **pobject)
{
	struct nv50_graph_priv *priv = (void *)engine;
	struct nv50_graph_chan *chan;
	int ret;

	ret = FUNC0(parent, engine, oclass, NULL,
					   priv->size, 0,
					   NVOBJ_FLAG_ZERO_ALLOC, &chan);
	*pobject = FUNC4(chan);
	if (ret)
		return ret;

	FUNC1(FUNC2(priv), FUNC3(chan));
	return 0;
}