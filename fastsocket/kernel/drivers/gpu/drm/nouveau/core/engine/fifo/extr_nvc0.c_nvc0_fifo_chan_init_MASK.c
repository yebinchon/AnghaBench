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
struct nvc0_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nvc0_fifo_chan {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; int /*<<< orphan*/  parent; } ;
struct nouveau_gpuobj {int addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 struct nouveau_gpuobj* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_fifo_priv*) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *object)
{
	struct nouveau_gpuobj *base = FUNC1(object->parent);
	struct nvc0_fifo_priv *priv = (void *)object->engine;
	struct nvc0_fifo_chan *chan = (void *)object;
	u32 chid = chan->base.chid;
	int ret;

	ret = FUNC0(&chan->base);
	if (ret)
		return ret;

	FUNC2(priv, 0x003000 + (chid * 8), 0xc0000000 | base->addr >> 12);
	FUNC2(priv, 0x003004 + (chid * 8), 0x001f0001);
	FUNC3(priv);
	return 0;
}