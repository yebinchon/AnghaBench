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
typedef  int u32 ;
struct TYPE_6__ {int max; int /*<<< orphan*/  lock; } ;
struct nv04_fifo_priv {TYPE_2__ base; int /*<<< orphan*/  ramfc; } ;
struct TYPE_5__ {int chid; } ;
struct nv04_fifo_chan {int ramfc; TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {int addr; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NVDEV_ENGINE_GR 130 
#define  NVDEV_ENGINE_MPEG 129 
#define  NVDEV_ENGINE_SW 128 
 TYPE_4__* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_3__* FUNC2 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_fifo_priv*,int,int,int) ; 
 int FUNC4 (struct nv04_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv04_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC9(struct nouveau_object *parent,
			 struct nouveau_object *engctx)
{
	struct nv04_fifo_priv *priv = (void *)parent->engine;
	struct nv04_fifo_chan *chan = (void *)parent;
	unsigned long flags;
	u32 reg, ctx;

	switch (FUNC1(engctx->engine)) {
	case NVDEV_ENGINE_SW:
		return 0;
	case NVDEV_ENGINE_GR:
		reg = 0x32e0;
		ctx = 0x38;
		break;
	case NVDEV_ENGINE_MPEG:
		reg = 0x330c;
		ctx = 0x54;
		break;
	default:
		return -EINVAL;
	}

	FUNC7(&priv->base.lock, flags);
	FUNC0(engctx)->addr = FUNC2(engctx)->addr >> 4;
	FUNC3(priv, 0x002500, 0x00000001, 0x00000000);

	if ((FUNC4(priv, 0x003204) & priv->base.max) == chan->base.chid)
		FUNC6(priv, reg, FUNC0(engctx)->addr);
	FUNC5(priv->ramfc, chan->ramfc + ctx, FUNC0(engctx)->addr);

	FUNC3(priv, 0x002500, 0x00000001, 0x00000001);
	FUNC8(&priv->base.lock, flags);
	return 0;
}