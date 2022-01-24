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
typedef  int u32 ;
struct nv50_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nv50_fifo_chan {TYPE_1__ base; } ;
struct nv50_fifo_base {struct nouveau_gpuobj* ramfc; } ;
struct nouveau_object {scalar_t__ parent; scalar_t__ engine; } ;
struct nouveau_gpuobj {int addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_fifo_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_fifo_priv*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *object)
{
	struct nv50_fifo_priv *priv = (void *)object->engine;
	struct nv50_fifo_base *base = (void *)object->parent;
	struct nv50_fifo_chan *chan = (void *)object;
	struct nouveau_gpuobj *ramfc = base->ramfc;
	u32 chid = chan->base.chid;
	int ret;

	ret = FUNC0(&chan->base);
	if (ret)
		return ret;

	FUNC2(priv, 0x002600 + (chid * 4), 0x80000000 | ramfc->addr >> 12);
	FUNC1(priv);
	return 0;
}