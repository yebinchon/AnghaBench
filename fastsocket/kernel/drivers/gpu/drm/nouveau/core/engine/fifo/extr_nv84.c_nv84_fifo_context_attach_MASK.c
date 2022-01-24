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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct nv50_fifo_base {int /*<<< orphan*/  eng; } ;
struct nouveau_object {int /*<<< orphan*/  engine; scalar_t__ parent; } ;
struct nouveau_gpuobj {scalar_t__ addr; scalar_t__ size; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int addr; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NVDEV_ENGINE_COPY0 132 
#define  NVDEV_ENGINE_CRYPT 131 
#define  NVDEV_ENGINE_GR 130 
#define  NVDEV_ENGINE_MPEG 129 
#define  NVDEV_ENGINE_SW 128 
 int FUNC0 (scalar_t__) ; 
 struct nouveau_bar* FUNC1 (struct nouveau_object*) ; 
 TYPE_2__* FUNC2 (struct nouveau_gpuobj*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct nv50_fifo_base*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_bar*) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct nouveau_object *parent,
			 struct nouveau_object *object)
{
	struct nouveau_bar *bar = FUNC1(parent);
	struct nv50_fifo_base *base = (void *)parent->parent;
	struct nouveau_gpuobj *ectx = (void *)object;
	u64 limit = ectx->addr + ectx->size - 1;
	u64 start = ectx->addr;
	u32 addr;

	switch (FUNC3(object->engine)) {
	case NVDEV_ENGINE_SW   : return 0;
	case NVDEV_ENGINE_GR   : addr = 0x0020; break;
	case NVDEV_ENGINE_MPEG : addr = 0x0060; break;
	case NVDEV_ENGINE_CRYPT: addr = 0x00a0; break;
	case NVDEV_ENGINE_COPY0: addr = 0x00c0; break;
	default:
		return -EINVAL;
	}

	FUNC2(ectx)->addr = FUNC4(base)->addr >> 12;
	FUNC5(base->eng, addr + 0x00, 0x00190000);
	FUNC5(base->eng, addr + 0x04, FUNC0(limit));
	FUNC5(base->eng, addr + 0x08, FUNC0(start));
	FUNC5(base->eng, addr + 0x0c, FUNC7(limit) << 24 |
					FUNC7(start));
	FUNC5(base->eng, addr + 0x10, 0x00000000);
	FUNC5(base->eng, addr + 0x14, 0x00000000);
	bar->flush(bar);
	return 0;
}