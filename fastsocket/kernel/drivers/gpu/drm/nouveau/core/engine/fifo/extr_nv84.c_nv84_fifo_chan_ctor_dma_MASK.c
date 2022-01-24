#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {TYPE_2__* pushgpu; } ;
struct nv50_fifo_chan {TYPE_9__* ramht; TYPE_3__ base; } ;
struct nv50_fifo_base {int /*<<< orphan*/  ramfc; TYPE_6__* cache; } ;
struct nv03_channel_dma_class {int /*<<< orphan*/  offset; int /*<<< orphan*/  pushbuf; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_14__ {TYPE_4__* node; } ;
struct TYPE_18__ {int bits; TYPE_5__ base; } ;
struct TYPE_17__ {int addr; } ;
struct TYPE_16__ {int /*<<< orphan*/  object_detach; int /*<<< orphan*/  object_attach; int /*<<< orphan*/  context_detach; int /*<<< orphan*/  context_attach; } ;
struct TYPE_15__ {int addr; } ;
struct TYPE_13__ {int offset; } ;
struct TYPE_11__ {TYPE_1__* node; } ;
struct TYPE_10__ {int offset; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long long NVDEV_ENGINE_BSP ; 
 unsigned long long NVDEV_ENGINE_COPY0 ; 
 unsigned long long NVDEV_ENGINE_CRYPT ; 
 unsigned long long NVDEV_ENGINE_DMAOBJ ; 
 unsigned long long NVDEV_ENGINE_GR ; 
 unsigned long long NVDEV_ENGINE_ME ; 
 unsigned long long NVDEV_ENGINE_MPEG ; 
 unsigned long long NVDEV_ENGINE_PPP ; 
 unsigned long long NVDEV_ENGINE_SW ; 
 unsigned long long NVDEV_ENGINE_UNK1C1 ; 
 unsigned long long NVDEV_ENGINE_VP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_bar* FUNC1 (struct nouveau_object*) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned long long,struct nv50_fifo_chan**) ; 
 int FUNC3 (struct nouveau_object*,struct nouveau_object*,int,int,TYPE_9__**) ; 
 int /*<<< orphan*/  nv50_fifo_object_detach ; 
 int /*<<< orphan*/  nv84_fifo_context_attach ; 
 int /*<<< orphan*/  nv84_fifo_context_detach ; 
 int /*<<< orphan*/  nv84_fifo_object_attach ; 
 TYPE_8__* FUNC4 (struct nv50_fifo_base*) ; 
 struct nouveau_object* FUNC5 (struct nv50_fifo_chan*) ; 
 TYPE_7__* FUNC6 (struct nv50_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_bar*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *data, u32 size,
			struct nouveau_object **pobject)
{
	struct nouveau_bar *bar = FUNC1(parent);
	struct nv50_fifo_base *base = (void *)parent;
	struct nv50_fifo_chan *chan;
	struct nv03_channel_dma_class *args = data;
	int ret;

	if (size < sizeof(*args))
		return -EINVAL;

	ret = FUNC2(parent, engine, oclass, 0, 0xc00000,
					  0x2000, args->pushbuf,
					  (1ULL << NVDEV_ENGINE_DMAOBJ) |
					  (1ULL << NVDEV_ENGINE_SW) |
					  (1ULL << NVDEV_ENGINE_GR) |
					  (1ULL << NVDEV_ENGINE_MPEG) |
					  (1ULL << NVDEV_ENGINE_ME) |
					  (1ULL << NVDEV_ENGINE_VP) |
					  (1ULL << NVDEV_ENGINE_CRYPT) |
					  (1ULL << NVDEV_ENGINE_BSP) |
					  (1ULL << NVDEV_ENGINE_PPP) |
					  (1ULL << NVDEV_ENGINE_COPY0) |
					  (1ULL << NVDEV_ENGINE_UNK1C1), &chan);
	*pobject = FUNC5(chan);
	if (ret)
		return ret;

	ret = FUNC3(parent, parent, 0x8000, 16, &chan->ramht);
	if (ret)
		return ret;

	FUNC6(chan)->context_attach = nv84_fifo_context_attach;
	FUNC6(chan)->context_detach = nv84_fifo_context_detach;
	FUNC6(chan)->object_attach = nv84_fifo_object_attach;
	FUNC6(chan)->object_detach = nv50_fifo_object_detach;

	FUNC7(base->ramfc, 0x08, FUNC0(args->offset));
	FUNC7(base->ramfc, 0x0c, FUNC9(args->offset));
	FUNC7(base->ramfc, 0x10, FUNC0(args->offset));
	FUNC7(base->ramfc, 0x14, FUNC9(args->offset));
	FUNC7(base->ramfc, 0x3c, 0x003f6078);
	FUNC7(base->ramfc, 0x44, 0x01003fff);
	FUNC7(base->ramfc, 0x48, chan->base.pushgpu->node->offset >> 4);
	FUNC7(base->ramfc, 0x4c, 0xffffffff);
	FUNC7(base->ramfc, 0x60, 0x7fffffff);
	FUNC7(base->ramfc, 0x78, 0x00000000);
	FUNC7(base->ramfc, 0x7c, 0x30000001);
	FUNC7(base->ramfc, 0x80, ((chan->ramht->bits - 9) << 27) |
				   (4 << 24) /* SEARCH_FULL */ |
				   (chan->ramht->base.node->offset >> 4));
	FUNC7(base->ramfc, 0x88, base->cache->addr >> 10);
	FUNC7(base->ramfc, 0x98, FUNC4(base)->addr >> 12);
	bar->flush(bar);
	return 0;
}