#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;
struct TYPE_7__ {struct nve0_fifo_base* mem; TYPE_1__ bar; } ;
struct nve0_fifo_priv {TYPE_2__ user; } ;
struct TYPE_8__ {int chid; } ;
struct nve0_fifo_chan {int engine; TYPE_3__ base; } ;
struct nve0_fifo_base {int addr; } ;
struct nve0_channel_ind_class {int engine; int ioffset; int ilength; int /*<<< orphan*/  pushbuf; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  subdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  context_detach; int /*<<< orphan*/  context_attach; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FIFO_ENGINE_NR ; 
 TYPE_5__* fifo_engine ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct nouveau_bar* FUNC2 (struct nouveau_object*) ; 
 scalar_t__ FUNC3 (struct nouveau_object*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nve0_fifo_chan**) ; 
 struct nouveau_object* FUNC5 (struct nve0_fifo_chan*) ; 
 TYPE_4__* FUNC6 (struct nve0_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct nve0_fifo_base*,int,int) ; 
 int /*<<< orphan*/  nve0_fifo_context_attach ; 
 int /*<<< orphan*/  nve0_fifo_context_detach ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_bar*) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, void *data, u32 size,
		    struct nouveau_object **pobject)
{
	struct nouveau_bar *bar = FUNC2(parent);
	struct nve0_fifo_priv *priv = (void *)engine;
	struct nve0_fifo_base *base = (void *)parent;
	struct nve0_fifo_chan *chan;
	struct nve0_channel_ind_class *args = data;
	u64 usermem, ioffset, ilength;
	int ret, i;

	if (size < sizeof(*args))
		return -EINVAL;

	for (i = 0; i < FIFO_ENGINE_NR; i++) {
		if (args->engine & (1 << i)) {
			if (FUNC3(parent, fifo_engine[i].subdev)) {
				args->engine = (1 << i);
				break;
			}
		}
	}

	if (i == FIFO_ENGINE_NR)
		return -ENODEV;

	ret = FUNC4(parent, engine, oclass, 1,
					  priv->user.bar.offset, 0x200,
					  args->pushbuf,
					  fifo_engine[i].mask, &chan);
	*pobject = FUNC5(chan);
	if (ret)
		return ret;

	FUNC6(chan)->context_attach = nve0_fifo_context_attach;
	FUNC6(chan)->context_detach = nve0_fifo_context_detach;
	chan->engine = i;

	usermem = chan->base.chid * 0x200;
	ioffset = args->ioffset;
	ilength = FUNC0(args->ilength / 8);

	for (i = 0; i < 0x200; i += 4)
		FUNC7(priv->user.mem, usermem + i, 0x00000000);

	FUNC7(base, 0x08, FUNC1(priv->user.mem->addr + usermem));
	FUNC7(base, 0x0c, FUNC9(priv->user.mem->addr + usermem));
	FUNC7(base, 0x10, 0x0000face);
	FUNC7(base, 0x30, 0xfffff902);
	FUNC7(base, 0x48, FUNC1(ioffset));
	FUNC7(base, 0x4c, FUNC9(ioffset) | (ilength << 16));
	FUNC7(base, 0x84, 0x20400000);
	FUNC7(base, 0x94, 0x30000001);
	FUNC7(base, 0x9c, 0x00000100);
	FUNC7(base, 0xac, 0x0000001f);
	FUNC7(base, 0xe8, chan->base.chid);
	FUNC7(base, 0xb8, 0xf8000000);
	FUNC7(base, 0xf8, 0x10003080); /* 0x002310 */
	FUNC7(base, 0xfc, 0x10000010); /* 0x002350 */
	bar->flush(bar);
	return 0;
}