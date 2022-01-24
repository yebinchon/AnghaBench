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
struct nv20_graph_priv {int /*<<< orphan*/  ctxtab; } ;
struct nv20_graph_chan {int chid; int /*<<< orphan*/  base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct nv20_graph_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC3(struct nouveau_object *object)
{
	struct nv20_graph_priv *priv = (void *)object->engine;
	struct nv20_graph_chan *chan = (void *)object;
	int ret;

	ret = FUNC0(&chan->base);
	if (ret)
		return ret;

	FUNC2(priv->ctxtab, chan->chid * 4, FUNC1(chan)->addr >> 4);
	return 0;
}