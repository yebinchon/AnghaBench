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
struct nouveau_vmmgr {int pgt_bits; scalar_t__ spg_shift; } ;
struct nouveau_vma {TYPE_2__* node; struct nouveau_vm* vm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct nouveau_vm {TYPE_1__ mm; struct nouveau_vmmgr* vmm; } ;
struct TYPE_4__ {int offset; int length; scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_vm*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct nouveau_vma *vma)
{
	struct nouveau_vm *vm = vma->vm;
	struct nouveau_vmmgr *vmm = vm->vmm;
	u32 fpde, lpde;

	if (FUNC4(vma->node == NULL))
		return;
	fpde = (vma->node->offset >> vmm->pgt_bits);
	lpde = (vma->node->offset + vma->node->length - 1) >> vmm->pgt_bits;

	FUNC0(&vm->mm.mutex);
	FUNC3(vm, vma->node->type != vmm->spg_shift, fpde, lpde);
	FUNC2(&vm->mm, &vma->node);
	FUNC1(&vm->mm.mutex);
}