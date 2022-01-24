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
typedef  int u64 ;
typedef  int u32 ;
struct nouveau_vmmgr {scalar_t__ spg_shift; int pgt_bits; int /*<<< orphan*/  (* flush ) (struct nouveau_vm*) ;int /*<<< orphan*/  (* map_sg ) (struct nouveau_vma*,struct nouveau_gpuobj*,struct nouveau_mem*,int,int,int /*<<< orphan*/ *) ;} ;
struct nouveau_vma {TYPE_1__* node; struct nouveau_vm* vm; } ;
struct nouveau_vm {int fpde; TYPE_2__* pgt; struct nouveau_vmmgr* vmm; } ;
struct nouveau_mem {int /*<<< orphan*/ * pages; } ;
struct nouveau_gpuobj {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {struct nouveau_gpuobj** obj; } ;
struct TYPE_3__ {scalar_t__ type; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_vma*,struct nouveau_gpuobj*,struct nouveau_mem*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_vm*) ; 
 scalar_t__ FUNC2 (int) ; 

void
FUNC3(struct nouveau_vma *vma, u64 delta, u64 length,
		  struct nouveau_mem *mem)
{
	struct nouveau_vm *vm = vma->vm;
	struct nouveau_vmmgr *vmm = vm->vmm;
	dma_addr_t *list = mem->pages;
	int big = vma->node->type != vmm->spg_shift;
	u32 offset = vma->node->offset + (delta >> 12);
	u32 bits = vma->node->type - 12;
	u32 num  = length >> vma->node->type;
	u32 pde  = (offset >> vmm->pgt_bits) - vm->fpde;
	u32 pte  = (offset & ((1 << vmm->pgt_bits) - 1)) >> bits;
	u32 max  = 1 << (vmm->pgt_bits - bits);
	u32 end, len;

	while (num) {
		struct nouveau_gpuobj *pgt = vm->pgt[pde].obj[big];

		end = (pte + num);
		if (FUNC2(end >= max))
			end = max;
		len = end - pte;

		vmm->map_sg(vma, pgt, mem, pte, len, list);

		num  -= len;
		pte  += len;
		list += len;
		if (FUNC2(end >= max)) {
			pde++;
			pte = 0;
		}
	}

	vmm->flush(vm);
}