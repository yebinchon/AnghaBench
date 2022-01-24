#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int max; int /*<<< orphan*/  lock; } ;
struct nv04_fifo_priv {TYPE_2__ base; int /*<<< orphan*/  ramfc; } ;
struct TYPE_3__ {int chid; } ;
struct nv04_fifo_chan {int ramfc; TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NVDEV_ENGINE_GR 130 
#define  NVDEV_ENGINE_MPEG 129 
#define  NVDEV_ENGINE_SW 128 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_fifo_priv*,int,int,int) ; 
 int FUNC2 (struct nv04_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv04_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_object *parent, bool suspend,
			 struct nouveau_object *engctx)
{
	struct nv04_fifo_priv *priv = (void *)parent->engine;
	struct nv04_fifo_chan *chan = (void *)parent;
	unsigned long flags;
	u32 reg, ctx;

	switch (FUNC0(engctx->engine)) {
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

	FUNC5(&priv->base.lock, flags);
	FUNC1(priv, 0x002500, 0x00000001, 0x00000000);

	if ((FUNC2(priv, 0x003204) & priv->base.max) == chan->base.chid)
		FUNC4(priv, reg, 0x00000000);
	FUNC3(priv->ramfc, chan->ramfc + ctx, 0x00000000);

	FUNC1(priv, 0x002500, 0x00000001, 0x00000001);
	FUNC6(&priv->base.lock, flags);
	return 0;
}