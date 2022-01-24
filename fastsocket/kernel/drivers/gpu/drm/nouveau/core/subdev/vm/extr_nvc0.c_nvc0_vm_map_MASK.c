#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nouveau_vma {TYPE_1__* node; } ;
struct nouveau_mem {int /*<<< orphan*/  memtype; } ;
struct nouveau_gpuobj {int dummy; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_gpuobj*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_vma *vma, struct nouveau_gpuobj *pgt,
	    struct nouveau_mem *mem, u32 pte, u32 cnt, u64 phys, u64 delta)
{
	u32 next = 1 << (vma->node->type - 8);

	phys  = FUNC2(vma, phys, mem->memtype, 0);
	pte <<= 3;
	while (cnt--) {
		FUNC1(pgt, pte + 0, FUNC0(phys));
		FUNC1(pgt, pte + 4, FUNC3(phys));
		phys += next;
		pte  += 8;
	}
}