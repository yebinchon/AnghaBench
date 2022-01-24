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
struct nouveau_vma {TYPE_4__* node; TYPE_2__* vm; } ;
struct nouveau_mem {int memtype; TYPE_3__* tag; } ;
struct nouveau_gpuobj {int dummy; } ;
struct TYPE_6__ {scalar_t__ stolen; } ;
struct TYPE_10__ {TYPE_1__ ram; } ;
struct TYPE_9__ {int type; } ;
struct TYPE_8__ {int offset; } ;
struct TYPE_7__ {int /*<<< orphan*/  vmm; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_gpuobj*,int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct nouveau_vma*,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nouveau_vma *vma, struct nouveau_gpuobj *pgt,
	    struct nouveau_mem *mem, u32 pte, u32 cnt, u64 phys, u64 delta)
{
	u32 comp = (mem->memtype & 0x180) >> 7;
	u32 block, target;
	int i;

	/* IGPs don't have real VRAM, re-target to stolen system memory */
	target = 0;
	if (FUNC1(vma->vm->vmm)->ram.stolen) {
		phys += FUNC1(vma->vm->vmm)->ram.stolen;
		target = 3;
	}

	phys  = FUNC4(vma, phys, mem->memtype, target);
	pte <<= 3;
	cnt <<= 3;

	while (cnt) {
		u32 offset_h = FUNC3(phys);
		u32 offset_l = FUNC0(phys);

		for (i = 7; i >= 0; i--) {
			block = 1 << (i + 3);
			if (cnt >= block && !(pte & (block - 1)))
				break;
		}
		offset_l |= (i << 7);

		phys += block << (vma->node->type - 3);
		cnt  -= block;
		if (comp) {
			u32 tag = mem->tag->offset + ((delta >> 16) * comp);
			offset_h |= (tag << 17);
			delta    += block << (vma->node->type - 3);
		}

		while (block) {
			FUNC2(pgt, pte + 0, offset_l);
			FUNC2(pgt, pte + 4, offset_h);
			pte += 8;
			block -= 8;
		}
	}
}