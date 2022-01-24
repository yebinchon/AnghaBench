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
struct nv20_graph_chan {int chid; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int chid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 TYPE_1__* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nv20_graph_chan**) ; 
 struct nouveau_object* FUNC2 (struct nv20_graph_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv20_graph_chan*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *data, u32 size,
			struct nouveau_object **pobject)
{
	struct nv20_graph_chan *chan;
	int ret, i;

	ret = FUNC1(parent, engine, oclass, NULL,
					   0x37f0, 16, NVOBJ_FLAG_ZERO_ALLOC,
					   &chan);
	*pobject = FUNC2(chan);
	if (ret)
		return ret;

	chan->chid = FUNC0(parent)->chid;

	FUNC3(chan, 0x0000, 0x00000001 | (chan->chid << 24));
	FUNC3(chan, 0x033c, 0xffff0000);
	FUNC3(chan, 0x03a0, 0x0fff0000);
	FUNC3(chan, 0x03a4, 0x0fff0000);
	FUNC3(chan, 0x047c, 0x00000101);
	FUNC3(chan, 0x0490, 0x00000111);
	FUNC3(chan, 0x04a8, 0x44400000);
	for (i = 0x04d4; i <= 0x04e0; i += 4)
		FUNC3(chan, i, 0x00030303);
	for (i = 0x04f4; i <= 0x0500; i += 4)
		FUNC3(chan, i, 0x00080000);
	for (i = 0x050c; i <= 0x0518; i += 4)
		FUNC3(chan, i, 0x01012000);
	for (i = 0x051c; i <= 0x0528; i += 4)
		FUNC3(chan, i, 0x000105b8);
	for (i = 0x052c; i <= 0x0538; i += 4)
		FUNC3(chan, i, 0x00080008);
	for (i = 0x055c; i <= 0x0598; i += 4)
		FUNC3(chan, i, 0x07ff0000);
	FUNC3(chan, 0x05a4, 0x4b7fffff);
	FUNC3(chan, 0x05fc, 0x00000001);
	FUNC3(chan, 0x0604, 0x00004000);
	FUNC3(chan, 0x0610, 0x00000001);
	FUNC3(chan, 0x0618, 0x00040000);
	FUNC3(chan, 0x061c, 0x00010000);
	for (i = 0x1c1c; i <= 0x248c; i += 16) {
		FUNC3(chan, (i + 0), 0x10700ff9);
		FUNC3(chan, (i + 4), 0x0436086c);
		FUNC3(chan, (i + 8), 0x000c001b);
	}
	FUNC3(chan, 0x281c, 0x3f800000);
	FUNC3(chan, 0x2830, 0x3f800000);
	FUNC3(chan, 0x285c, 0x40000000);
	FUNC3(chan, 0x2860, 0x3f800000);
	FUNC3(chan, 0x2864, 0x3f000000);
	FUNC3(chan, 0x286c, 0x40000000);
	FUNC3(chan, 0x2870, 0x3f800000);
	FUNC3(chan, 0x2878, 0xbf800000);
	FUNC3(chan, 0x2880, 0xbf800000);
	FUNC3(chan, 0x34a4, 0x000fe000);
	FUNC3(chan, 0x3530, 0x000003f8);
	FUNC3(chan, 0x3540, 0x002fe000);
	for (i = 0x355c; i <= 0x3578; i += 4)
		FUNC3(chan, i, 0x001c527c);
	return 0;
}