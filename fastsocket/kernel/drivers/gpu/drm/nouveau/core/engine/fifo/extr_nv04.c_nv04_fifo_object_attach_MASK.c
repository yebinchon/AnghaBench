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
typedef  int u32 ;
struct nv04_fifo_priv {int /*<<< orphan*/  ramht; } ;
struct TYPE_4__ {int chid; } ;
struct nv04_fifo_chan {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NVDEV_ENGINE_DMAOBJ 131 
#define  NVDEV_ENGINE_GR 130 
#define  NVDEV_ENGINE_MPEG 129 
#define  NVDEV_ENGINE_SW 128 
 int /*<<< orphan*/  NV_GPUOBJ_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_3__* FUNC4 (struct nouveau_object*) ; 
 scalar_t__ FUNC5 (struct nouveau_object*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct nv04_fifo_priv*) ; 

int
FUNC7(struct nouveau_object *parent,
			struct nouveau_object *object, u32 handle)
{
	struct nv04_fifo_priv *priv = (void *)parent->engine;
	struct nv04_fifo_chan *chan = (void *)parent;
	u32 context, chid = chan->base.chid;
	int ret;

	if (FUNC5(object, NV_GPUOBJ_CLASS))
		context = FUNC4(object)->addr >> 4;
	else
		context = 0x00000004; /* just non-zero */

	switch (FUNC3(object->engine)) {
	case NVDEV_ENGINE_DMAOBJ:
	case NVDEV_ENGINE_SW:
		context |= 0x00000000;
		break;
	case NVDEV_ENGINE_GR:
		context |= 0x00010000;
		break;
	case NVDEV_ENGINE_MPEG:
		context |= 0x00020000;
		break;
	default:
		return -EINVAL;
	}

	context |= 0x80000000; /* valid */
	context |= chid << 24;

	FUNC0(&FUNC6(priv)->mutex);
	ret = FUNC2(priv->ramht, chid, handle, context);
	FUNC1(&FUNC6(priv)->mutex);
	return ret;
}