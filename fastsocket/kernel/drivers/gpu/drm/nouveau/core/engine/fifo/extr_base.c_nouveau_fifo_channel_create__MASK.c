#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_fifo_chan {size_t chid; int size; int /*<<< orphan*/  user; int /*<<< orphan*/  pushgpu; TYPE_3__* pushdma; } ;
struct nouveau_fifo {size_t min; size_t max; int /*<<< orphan*/  lock; scalar_t__* channel; } ;
struct nouveau_dmaeng {int (* bind ) (struct nouveau_dmaeng*,struct nouveau_object*,TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct nouveau_device {int /*<<< orphan*/  pdev; } ;
struct TYPE_5__ {TYPE_1__* oclass; scalar_t__ engine; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {int handle; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
#define  NV_DMA_FROM_MEMORY_CLASS 129 
#define  NV_DMA_IN_MEMORY_CLASS 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct nouveau_object*,int) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 
 struct nouveau_device* FUNC3 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_fifo*,char*) ; 
 scalar_t__ FUNC5 (struct nouveau_fifo_chan*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct nouveau_dmaeng*,struct nouveau_object*,TYPE_3__*,int /*<<< orphan*/ *) ; 

int
FUNC10(struct nouveau_object *parent,
			     struct nouveau_object *engine,
			     struct nouveau_oclass *oclass,
			     int bar, u32 addr, u32 size, u32 pushbuf,
			     u64 engmask, int len, void **ptr)
{
	struct nouveau_device *device = FUNC3(engine);
	struct nouveau_fifo *priv = (void *)engine;
	struct nouveau_fifo_chan *chan;
	struct nouveau_dmaeng *dmaeng;
	unsigned long flags;
	int ret;

	/* create base object class */
	ret = FUNC2(parent, engine, oclass, 0, NULL,
				     engmask, len, ptr);
	chan = *ptr;
	if (ret)
		return ret;

	/* validate dma object representing push buffer */
	chan->pushdma = (void *)FUNC1(parent, pushbuf);
	if (!chan->pushdma)
		return -ENOENT;

	dmaeng = (void *)chan->pushdma->base.engine;
	switch (chan->pushdma->base.oclass->handle) {
	case NV_DMA_FROM_MEMORY_CLASS:
	case NV_DMA_IN_MEMORY_CLASS:
		break;
	default:
		return -EINVAL;
	}

	ret = dmaeng->bind(dmaeng, parent, chan->pushdma, &chan->pushgpu);
	if (ret)
		return ret;

	/* find a free fifo channel */
	FUNC7(&priv->lock, flags);
	for (chan->chid = priv->min; chan->chid < priv->max; chan->chid++) {
		if (!priv->channel[chan->chid]) {
			priv->channel[chan->chid] = FUNC5(chan);
			break;
		}
	}
	FUNC8(&priv->lock, flags);

	if (chan->chid == priv->max) {
		FUNC4(priv, "no free channels\n");
		return -ENOSPC;
	}

	/* map fifo control registers */
	chan->user = FUNC0(FUNC6(device->pdev, bar) + addr +
			     (chan->chid * size), size);
	if (!chan->user)
		return -EFAULT;

	chan->size = size;
	return 0;
}