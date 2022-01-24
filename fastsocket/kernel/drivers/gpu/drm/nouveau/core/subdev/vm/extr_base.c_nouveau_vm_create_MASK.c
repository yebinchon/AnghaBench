#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct nouveau_vmmgr {int pgt_bits; } ;
struct nouveau_vm {int refcount; int fpde; int lpde; struct nouveau_vm* pgt; int /*<<< orphan*/  mm; struct nouveau_vmmgr* vmm; int /*<<< orphan*/  pgd_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_vm* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_vm*) ; 
 struct nouveau_vm* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 

int
FUNC5(struct nouveau_vmmgr *vmm, u64 offset, u64 length,
		  u64 mm_offset, u32 block, struct nouveau_vm **pvm)
{
	struct nouveau_vm *vm;
	u64 mm_length = (offset + length) - mm_offset;
	int ret;

	vm = FUNC3(sizeof(*vm), GFP_KERNEL);
	if (!vm)
		return -ENOMEM;

	FUNC0(&vm->pgd_list);
	vm->vmm = vmm;
	vm->refcount = 1;
	vm->fpde = offset >> (vmm->pgt_bits + 12);
	vm->lpde = (offset + length - 1) >> (vmm->pgt_bits + 12);

	vm->pgt  = FUNC1(vm->lpde - vm->fpde + 1, sizeof(*vm->pgt), GFP_KERNEL);
	if (!vm->pgt) {
		FUNC2(vm);
		return -ENOMEM;
	}

	ret = FUNC4(&vm->mm, mm_offset >> 12, mm_length >> 12,
			      block >> 12);
	if (ret) {
		FUNC2(vm->pgt);
		FUNC2(vm);
		return ret;
	}

	*pvm = vm;

	return 0;
}