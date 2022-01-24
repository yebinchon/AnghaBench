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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_vma {int dummy; } ;
struct nouveau_vm {int dummy; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_instobj {int dummy; } ;
struct nouveau_gpuobj {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_MEMOBJ_CLASS ; 
 int FUNC0 (struct nouveau_vm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_vma*,struct nouveau_mem*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_gpuobj*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct nouveau_gpuobj *gpuobj, struct nouveau_vm *vm,
		      u32 access, struct nouveau_vma *vma)
{
	struct nouveau_instobj *iobj = (void *)
		FUNC3(FUNC2(gpuobj), NV_MEMOBJ_CLASS);
	struct nouveau_mem **mem = (void *)(iobj + 1);
	int ret;

	ret = FUNC0(vm, gpuobj->size, 12, access, vma);
	if (ret)
		return ret;

	FUNC1(vma, *mem);
	return 0;
}