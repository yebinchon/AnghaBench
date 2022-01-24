#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  node; } ;
struct nve0_fifo_base {TYPE_4__ vma; int /*<<< orphan*/  vm; } ;
struct nouveau_object {int /*<<< orphan*/  engine; scalar_t__ parent; } ;
struct nouveau_engctx {TYPE_4__ vma; int /*<<< orphan*/  vm; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int addr; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NVDEV_ENGINE_BSP 134 
#define  NVDEV_ENGINE_COPY0 133 
#define  NVDEV_ENGINE_COPY1 132 
#define  NVDEV_ENGINE_GR 131 
#define  NVDEV_ENGINE_PPP 130 
#define  NVDEV_ENGINE_SW 129 
#define  NVDEV_ENGINE_VP 128 
 int /*<<< orphan*/  NV_MEM_ACCESS_RW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_bar* FUNC1 (struct nouveau_object*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_2__* FUNC3 (struct nve0_fifo_base*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct nve0_fifo_base*) ; 
 int /*<<< orphan*/  FUNC6 (struct nve0_fifo_base*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_bar*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct nouveau_object *parent,
			 struct nouveau_object *object)
{
	struct nouveau_bar *bar = FUNC1(parent);
	struct nve0_fifo_base *base = (void *)parent->parent;
	struct nouveau_engctx *ectx = (void *)object;
	u32 addr;
	int ret;

	switch (FUNC4(object->engine)) {
	case NVDEV_ENGINE_SW   : return 0;
	case NVDEV_ENGINE_GR   :
	case NVDEV_ENGINE_COPY0:
	case NVDEV_ENGINE_COPY1: addr = 0x0210; break;
	case NVDEV_ENGINE_BSP  : addr = 0x0270; break;
	case NVDEV_ENGINE_VP   : addr = 0x0250; break;
	case NVDEV_ENGINE_PPP  : addr = 0x0260; break;
	default:
		return -EINVAL;
	}

	if (!ectx->vma.node) {
		ret = FUNC2(FUNC5(ectx), base->vm,
					    NV_MEM_ACCESS_RW, &ectx->vma);
		if (ret)
			return ret;

		FUNC3(ectx)->addr = FUNC5(base)->addr >> 12;
	}

	FUNC6(base, addr + 0x00, FUNC0(ectx->vma.offset) | 4);
	FUNC6(base, addr + 0x04, FUNC8(ectx->vma.offset));
	bar->flush(bar);
	return 0;
}