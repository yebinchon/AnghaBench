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
struct nv50_fifo_chan {int /*<<< orphan*/  ramht; } ;
struct nouveau_object {int /*<<< orphan*/  engine; } ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {int offset; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NVDEV_ENGINE_BSP 138 
#define  NVDEV_ENGINE_COPY0 137 
#define  NVDEV_ENGINE_CRYPT 136 
#define  NVDEV_ENGINE_DMAOBJ 135 
#define  NVDEV_ENGINE_GR 134 
#define  NVDEV_ENGINE_ME 133 
#define  NVDEV_ENGINE_MPEG 132 
#define  NVDEV_ENGINE_PPP 131 
#define  NVDEV_ENGINE_SW 130 
#define  NVDEV_ENGINE_UNK1C1 129 
#define  NVDEV_ENGINE_VP 128 
 int /*<<< orphan*/  NV_GPUOBJ_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct nouveau_object*) ; 
 scalar_t__ FUNC3 (struct nouveau_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *parent,
			struct nouveau_object *object, u32 handle)
{
	struct nv50_fifo_chan *chan = (void *)parent;
	u32 context;

	if (FUNC3(object, NV_GPUOBJ_CLASS))
		context = FUNC2(object)->node->offset >> 4;
	else
		context = 0x00000004; /* just non-zero */

	switch (FUNC1(object->engine)) {
	case NVDEV_ENGINE_DMAOBJ:
	case NVDEV_ENGINE_SW    : context |= 0x00000000; break;
	case NVDEV_ENGINE_GR    : context |= 0x00100000; break;
	case NVDEV_ENGINE_MPEG  :
	case NVDEV_ENGINE_PPP   : context |= 0x00200000; break;
	case NVDEV_ENGINE_ME    :
	case NVDEV_ENGINE_COPY0 : context |= 0x00300000; break;
	case NVDEV_ENGINE_VP    : context |= 0x00400000; break;
	case NVDEV_ENGINE_CRYPT :
	case NVDEV_ENGINE_UNK1C1: context |= 0x00500000; break;
	case NVDEV_ENGINE_BSP   : context |= 0x00600000; break;
	default:
		return -EINVAL;
	}

	return FUNC0(chan->ramht, 0, handle, context);
}