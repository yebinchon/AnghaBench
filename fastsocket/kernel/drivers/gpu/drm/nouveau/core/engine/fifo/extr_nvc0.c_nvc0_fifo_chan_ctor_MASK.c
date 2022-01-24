#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  offset; } ;
struct TYPE_7__ {struct nvc0_fifo_base* mem; TYPE_1__ bar; } ;
struct nvc0_fifo_priv {TYPE_3__ user; } ;
struct TYPE_6__ {int chid; } ;
struct nvc0_fifo_chan {TYPE_2__ base; } ;
struct nvc0_fifo_base {int addr; } ;
struct nv50_channel_ind_class {int ioffset; int ilength; int /*<<< orphan*/  pushbuf; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  context_detach; int /*<<< orphan*/  context_attach; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long long NVDEV_ENGINE_BSP ; 
 unsigned long long NVDEV_ENGINE_COPY0 ; 
 unsigned long long NVDEV_ENGINE_COPY1 ; 
 unsigned long long NVDEV_ENGINE_GR ; 
 unsigned long long NVDEV_ENGINE_PPP ; 
 unsigned long long NVDEV_ENGINE_SW ; 
 unsigned long long NVDEV_ENGINE_VP ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct nouveau_bar* FUNC2 (struct nouveau_object*) ; 
 int FUNC3 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long long,struct nvc0_fifo_chan**) ; 
 struct nouveau_object* FUNC4 (struct nvc0_fifo_chan*) ; 
 TYPE_4__* FUNC5 (struct nvc0_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_fifo_base*,int,int) ; 
 int /*<<< orphan*/  nvc0_fifo_context_attach ; 
 int /*<<< orphan*/  nvc0_fifo_context_detach ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_bar*) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, void *data, u32 size,
		    struct nouveau_object **pobject)
{
	struct nouveau_bar *bar = FUNC2(parent);
	struct nvc0_fifo_priv *priv = (void *)engine;
	struct nvc0_fifo_base *base = (void *)parent;
	struct nvc0_fifo_chan *chan;
	struct nv50_channel_ind_class *args = data;
	u64 usermem, ioffset, ilength;
	int ret, i;

	if (size < sizeof(*args))
		return -EINVAL;

	ret = FUNC3(parent, engine, oclass, 1,
					  priv->user.bar.offset, 0x1000,
					  args->pushbuf,
					  (1ULL << NVDEV_ENGINE_SW) |
					  (1ULL << NVDEV_ENGINE_GR) |
					  (1ULL << NVDEV_ENGINE_COPY0) |
					  (1ULL << NVDEV_ENGINE_COPY1) |
					  (1ULL << NVDEV_ENGINE_BSP) |
					  (1ULL << NVDEV_ENGINE_VP) |
					  (1ULL << NVDEV_ENGINE_PPP), &chan);
	*pobject = FUNC4(chan);
	if (ret)
		return ret;

	FUNC5(chan)->context_attach = nvc0_fifo_context_attach;
	FUNC5(chan)->context_detach = nvc0_fifo_context_detach;

	usermem = chan->base.chid * 0x1000;
	ioffset = args->ioffset;
	ilength = FUNC0(args->ilength / 8);

	for (i = 0; i < 0x1000; i += 4)
		FUNC6(priv->user.mem, usermem + i, 0x00000000);

	FUNC6(base, 0x08, FUNC1(priv->user.mem->addr + usermem));
	FUNC6(base, 0x0c, FUNC8(priv->user.mem->addr + usermem));
	FUNC6(base, 0x10, 0x0000face);
	FUNC6(base, 0x30, 0xfffff902);
	FUNC6(base, 0x48, FUNC1(ioffset));
	FUNC6(base, 0x4c, FUNC8(ioffset) | (ilength << 16));
	FUNC6(base, 0x54, 0x00000002);
	FUNC6(base, 0x84, 0x20400000);
	FUNC6(base, 0x94, 0x30000001);
	FUNC6(base, 0x9c, 0x00000100);
	FUNC6(base, 0xa4, 0x1f1f1f1f);
	FUNC6(base, 0xa8, 0x1f1f1f1f);
	FUNC6(base, 0xac, 0x0000001f);
	FUNC6(base, 0xb8, 0xf8000000);
	FUNC6(base, 0xf8, 0x10003080); /* 0x002310 */
	FUNC6(base, 0xfc, 0x10000010); /* 0x002350 */
	bar->flush(bar);
	return 0;
}