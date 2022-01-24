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
struct nouveau_vm {int /*<<< orphan*/  vmm; int /*<<< orphan*/ * engref; } ;
struct nouveau_engine {int /*<<< orphan*/  (* tlb_flush ) (struct nouveau_engine*) ;} ;

/* Variables and functions */
 int NVDEV_SUBDEV_NR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_engine* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_engine*) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_vm *vm)
{
	struct nouveau_engine *engine;
	int i;

	for (i = 0; i < NVDEV_SUBDEV_NR; i++) {
		if (FUNC0(&vm->engref[i])) {
			engine = FUNC1(vm->vmm, i);
			if (engine && engine->tlb_flush)
				engine->tlb_flush(engine);
		}
	}
}