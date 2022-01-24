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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int ctxdma; } ;
struct TYPE_6__ {TYPE_1__ vblank; } ;
struct nv50_software_chan {TYPE_2__ base; } ;
struct nouveau_object {int /*<<< orphan*/  parent; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;
struct nouveau_gpuobj {TYPE_3__* node; } ;
struct nouveau_fifo_chan {int dummy; } ;
struct TYPE_8__ {scalar_t__ parent; } ;
struct TYPE_7__ {int offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  NV_GPUOBJ_CLASS ; 
 struct nouveau_handle* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_handle*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct nouveau_gpuobj* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_fifo_chan*) ; 
 TYPE_4__* FUNC6 (struct nv50_software_chan*) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_object *object, u32 mthd,
			      void *args, u32 size)
{
	struct nv50_software_chan *chan = (void *)FUNC2(object->parent);
	struct nouveau_fifo_chan *fifo = (void *)FUNC6(chan)->parent;
	struct nouveau_handle *handle;
	int ret = -EINVAL;

	handle = FUNC0(FUNC5(fifo), *(u32 *)args);
	if (!handle)
		return -ENOENT;

	if (FUNC4(handle->object, NV_GPUOBJ_CLASS)) {
		struct nouveau_gpuobj *gpuobj = FUNC3(handle->object);
		chan->base.vblank.ctxdma = gpuobj->node->offset >> 4;
		ret = 0;
	}
	FUNC1(handle);
	return ret;
}