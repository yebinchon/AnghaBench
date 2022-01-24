#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nv40_graph_priv {int /*<<< orphan*/  size; } ;
struct nv40_graph_chan {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_3__ {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nv40_graph_chan**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv40_graph_priv*) ; 
 TYPE_1__* FUNC3 (struct nv40_graph_chan*) ; 
 struct nouveau_object* FUNC4 (struct nv40_graph_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv40_graph_chan*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *data, u32 size,
			struct nouveau_object **pobject)
{
	struct nv40_graph_priv *priv = (void *)engine;
	struct nv40_graph_chan *chan;
	int ret;

	ret = FUNC0(parent, engine, oclass, NULL,
					   priv->size, 16,
					   NVOBJ_FLAG_ZERO_ALLOC, &chan);
	*pobject = FUNC4(chan);
	if (ret)
		return ret;

	FUNC1(FUNC2(priv), FUNC3(chan));
	FUNC5(chan, 0x00000, FUNC3(chan)->addr >> 4);
	return 0;
}