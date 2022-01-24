#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_10__ {TYPE_2__* pushgpu; } ;
struct nv50_fifo_chan {TYPE_7__* ramht; TYPE_3__ base; } ;
struct nv50_fifo_base {int /*<<< orphan*/  ramfc; } ;
struct nv50_channel_ind_class {int ioffset; int ilength; int /*<<< orphan*/  pushbuf; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_12__ {TYPE_4__* node; } ;
struct TYPE_14__ {int bits; TYPE_5__ base; } ;
struct TYPE_13__ {int /*<<< orphan*/  object_detach; int /*<<< orphan*/  object_attach; int /*<<< orphan*/  context_detach; int /*<<< orphan*/  context_attach; } ;
struct TYPE_11__ {int offset; } ;
struct TYPE_9__ {TYPE_1__* node; } ;
struct TYPE_8__ {int offset; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long long NVDEV_ENGINE_DMAOBJ ; 
 unsigned long long NVDEV_ENGINE_GR ; 
 unsigned long long NVDEV_ENGINE_MPEG ; 
 unsigned long long NVDEV_ENGINE_SW ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct nouveau_bar* FUNC2 (struct nouveau_object*) ; 
 int FUNC3 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned long long,struct nv50_fifo_chan**) ; 
 int FUNC4 (struct nouveau_object*,struct nouveau_object*,int,int,TYPE_7__**) ; 
 int /*<<< orphan*/  nv50_fifo_context_attach ; 
 int /*<<< orphan*/  nv50_fifo_context_detach ; 
 int /*<<< orphan*/  nv50_fifo_object_attach ; 
 int /*<<< orphan*/  nv50_fifo_object_detach ; 
 struct nouveau_object* FUNC5 (struct nv50_fifo_chan*) ; 
 TYPE_6__* FUNC6 (struct nv50_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_bar*) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *data, u32 size,
			struct nouveau_object **pobject)
{
	struct nv50_channel_ind_class *args = data;
	struct nouveau_bar *bar = FUNC2(parent);
	struct nv50_fifo_base *base = (void *)parent;
	struct nv50_fifo_chan *chan;
	u64 ioffset, ilength;
	int ret;

	if (size < sizeof(*args))
		return -EINVAL;

	ret = FUNC3(parent, engine, oclass, 0, 0xc00000,
					  0x2000, args->pushbuf,
					  (1ULL << NVDEV_ENGINE_DMAOBJ) |
					  (1ULL << NVDEV_ENGINE_SW) |
					  (1ULL << NVDEV_ENGINE_GR) |
					  (1ULL << NVDEV_ENGINE_MPEG), &chan);
	*pobject = FUNC5(chan);
	if (ret)
		return ret;

	FUNC6(chan)->context_attach = nv50_fifo_context_attach;
	FUNC6(chan)->context_detach = nv50_fifo_context_detach;
	FUNC6(chan)->object_attach = nv50_fifo_object_attach;
	FUNC6(chan)->object_detach = nv50_fifo_object_detach;

	ret = FUNC4(parent, parent, 0x8000, 16, &chan->ramht);
	if (ret)
		return ret;

	ioffset = args->ioffset;
	ilength = FUNC0(args->ilength / 8);

	FUNC7(base->ramfc, 0x3c, 0x403f6078);
	FUNC7(base->ramfc, 0x44, 0x01003fff);
	FUNC7(base->ramfc, 0x48, chan->base.pushgpu->node->offset >> 4);
	FUNC7(base->ramfc, 0x50, FUNC1(ioffset));
	FUNC7(base->ramfc, 0x54, FUNC9(ioffset) | (ilength << 16));
	FUNC7(base->ramfc, 0x60, 0x7fffffff);
	FUNC7(base->ramfc, 0x78, 0x00000000);
	FUNC7(base->ramfc, 0x7c, 0x30000001);
	FUNC7(base->ramfc, 0x80, ((chan->ramht->bits - 9) << 27) |
				   (4 << 24) /* SEARCH_FULL */ |
				   (chan->ramht->base.node->offset >> 4));
	bar->flush(bar);
	return 0;
}