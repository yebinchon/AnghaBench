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

	ret = FUNC1(parent, engine, oclass, NULL, 0x3724,
					   16, NVOBJ_FLAG_ZERO_ALLOC, &chan);
	*pobject = FUNC2(chan);
	if (ret)
		return ret;

	chan->chid = FUNC0(parent)->chid;

	FUNC3(chan, 0x0028, 0x00000001 | (chan->chid << 24));
	FUNC3(chan, 0x035c, 0xffff0000);
	FUNC3(chan, 0x03c0, 0x0fff0000);
	FUNC3(chan, 0x03c4, 0x0fff0000);
	FUNC3(chan, 0x049c, 0x00000101);
	FUNC3(chan, 0x04b0, 0x00000111);
	FUNC3(chan, 0x04c8, 0x00000080);
	FUNC3(chan, 0x04cc, 0xffff0000);
	FUNC3(chan, 0x04d0, 0x00000001);
	FUNC3(chan, 0x04e4, 0x44400000);
	FUNC3(chan, 0x04fc, 0x4b800000);
	for (i = 0x0510; i <= 0x051c; i += 4)
		FUNC3(chan, i, 0x00030303);
	for (i = 0x0530; i <= 0x053c; i += 4)
		FUNC3(chan, i, 0x00080000);
	for (i = 0x0548; i <= 0x0554; i += 4)
		FUNC3(chan, i, 0x01012000);
	for (i = 0x0558; i <= 0x0564; i += 4)
		FUNC3(chan, i, 0x000105b8);
	for (i = 0x0568; i <= 0x0574; i += 4)
		FUNC3(chan, i, 0x00080008);
	for (i = 0x0598; i <= 0x05d4; i += 4)
		FUNC3(chan, i, 0x07ff0000);
	FUNC3(chan, 0x05e0, 0x4b7fffff);
	FUNC3(chan, 0x0620, 0x00000080);
	FUNC3(chan, 0x0624, 0x30201000);
	FUNC3(chan, 0x0628, 0x70605040);
	FUNC3(chan, 0x062c, 0xb0a09080);
	FUNC3(chan, 0x0630, 0xf0e0d0c0);
	FUNC3(chan, 0x0664, 0x00000001);
	FUNC3(chan, 0x066c, 0x00004000);
	FUNC3(chan, 0x0678, 0x00000001);
	FUNC3(chan, 0x0680, 0x00040000);
	FUNC3(chan, 0x0684, 0x00010000);
	for (i = 0x1b04; i <= 0x2374; i += 16) {
		FUNC3(chan, (i + 0), 0x10700ff9);
		FUNC3(chan, (i + 4), 0x0436086c);
		FUNC3(chan, (i + 8), 0x000c001b);
	}
	FUNC3(chan, 0x2704, 0x3f800000);
	FUNC3(chan, 0x2718, 0x3f800000);
	FUNC3(chan, 0x2744, 0x40000000);
	FUNC3(chan, 0x2748, 0x3f800000);
	FUNC3(chan, 0x274c, 0x3f000000);
	FUNC3(chan, 0x2754, 0x40000000);
	FUNC3(chan, 0x2758, 0x3f800000);
	FUNC3(chan, 0x2760, 0xbf800000);
	FUNC3(chan, 0x2768, 0xbf800000);
	FUNC3(chan, 0x308c, 0x000fe000);
	FUNC3(chan, 0x3108, 0x000003f8);
	FUNC3(chan, 0x3468, 0x002fe000);
	for (i = 0x3484; i <= 0x34a0; i += 4)
		FUNC3(chan, i, 0x001c527c);
	return 0;
}