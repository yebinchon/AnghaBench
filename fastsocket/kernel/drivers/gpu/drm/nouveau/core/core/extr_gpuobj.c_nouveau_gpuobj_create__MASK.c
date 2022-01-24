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
struct nouveau_object {int /*<<< orphan*/  refcount; struct nouveau_object* parent; } ;
struct nouveau_mm {scalar_t__ block_size; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_instobj {int dummy; } ;
struct nouveau_instmem {int (* alloc ) (struct nouveau_instmem*,struct nouveau_object*,int,int,struct nouveau_object**) ;} ;
struct nouveau_gpuobj {int flags; int size; int /*<<< orphan*/  heap; TYPE_3__* node; int /*<<< orphan*/  addr; struct nouveau_object* parent; } ;
struct nouveau_bar {int /*<<< orphan*/  (* alloc ) (struct nouveau_bar*,struct nouveau_object*,struct nouveau_mem*,struct nouveau_object**) ;} ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_5__ {struct nouveau_mm heap; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int NVOBJ_FLAG_HEAP ; 
 int NVOBJ_FLAG_ZERO_ALLOC ; 
 int NV_GPUOBJ_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct nouveau_bar* FUNC2 (struct nouveau_object*) ; 
 struct nouveau_instmem* FUNC3 (struct nouveau_object*) ; 
 int FUNC4 (struct nouveau_mm*,int,int,int,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_object*,char*) ; 
 TYPE_2__* FUNC9 (struct nouveau_object*) ; 
 TYPE_1__* FUNC10 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC11 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nouveau_gpuobj*,int,int) ; 
 int FUNC13 (struct nouveau_instmem*,struct nouveau_object*,int,int,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC14 (struct nouveau_bar*,struct nouveau_object*,struct nouveau_mem*,struct nouveau_object**) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

int
FUNC16(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, u32 pclass,
		       struct nouveau_object *pargpu,
		       u32 size, u32 align, u32 flags,
		       int length, void **pobject)
{
	struct nouveau_instmem *imem = FUNC3(parent);
	struct nouveau_bar *bar = FUNC2(parent);
	struct nouveau_gpuobj *gpuobj;
	struct nouveau_mm *heap = NULL;
	int ret, i;
	u64 addr;

	*pobject = NULL;

	if (pargpu) {
		while ((pargpu = FUNC11(pargpu, NV_GPUOBJ_CLASS))) {
			if (FUNC9(pargpu)->heap.block_size)
				break;
			pargpu = pargpu->parent;
		}

		if (FUNC15(pargpu == NULL)) {
			FUNC8(parent, "no gpuobj heap\n");
			return -EINVAL;
		}

		addr =  FUNC9(pargpu)->addr;
		heap = &FUNC9(pargpu)->heap;
		FUNC0(&parent->refcount);
	} else {
		ret = imem->alloc(imem, parent, size, align, &parent);
		pargpu = parent;
		if (ret)
			return ret;

		addr = FUNC10(pargpu)->addr;
		size = FUNC10(pargpu)->size;

		if (bar && bar->alloc) {
			struct nouveau_instobj *iobj = (void *)parent;
			struct nouveau_mem **mem = (void *)(iobj + 1);
			struct nouveau_mem *node = *mem;
			if (!bar->alloc(bar, parent, node, &pargpu)) {
				FUNC7(NULL, &parent);
				parent = pargpu;
			}
		}
	}

	ret = FUNC6(parent, engine, oclass, pclass |
				     NV_GPUOBJ_CLASS, length, pobject);
	FUNC7(NULL, &parent);
	gpuobj = *pobject;
	if (ret)
		return ret;

	gpuobj->parent = pargpu;
	gpuobj->flags = flags;
	gpuobj->addr = addr;
	gpuobj->size = size;

	if (heap) {
		ret = FUNC4(heap, 1, size, size,
				      FUNC1(align, (u32)1), &gpuobj->node);
		if (ret)
			return ret;

		gpuobj->addr += gpuobj->node->offset;
	}

	if (gpuobj->flags & NVOBJ_FLAG_HEAP) {
		ret = FUNC5(&gpuobj->heap, 0, gpuobj->size, 1);
		if (ret)
			return ret;
	}

	if (flags & NVOBJ_FLAG_ZERO_ALLOC) {
		for (i = 0; i < gpuobj->size; i += 4)
			FUNC12(gpuobj, i, 0x00000000);
	}

	return ret;
}