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
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (struct nv20_graph_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv20_graph_priv*,int,int,int) ; 
 int FUNC3 (struct nv20_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv20_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv20_graph_priv*,int,int) ; 

int
FUNC7(struct nouveau_object *object, bool suspend)
{
	struct nv20_graph_priv *priv = (void *)object->engine;
	struct nv20_graph_chan *chan = (void *)object;
	int chid = -1;

	FUNC2(priv, 0x400720, 0x00000001, 0x00000000);
	if (FUNC3(priv, 0x400144) & 0x00010000)
		chid = (FUNC3(priv, 0x400148) & 0x1f000000) >> 24;
	if (chan->chid == chid) {
		FUNC6(priv, 0x400784, FUNC1(chan)->addr >> 4);
		FUNC6(priv, 0x400788, 0x00000002);
		FUNC4(priv, 0x400700, 0xffffffff, 0x00000000);
		FUNC6(priv, 0x400144, 0x10000000);
		FUNC2(priv, 0x400148, 0xff000000, 0x1f000000);
	}
	FUNC2(priv, 0x400720, 0x00000001, 0x00000001);

	FUNC5(priv->ctxtab, chan->chid * 4, 0x00000000);
	return FUNC0(&chan->base, suspend);
}