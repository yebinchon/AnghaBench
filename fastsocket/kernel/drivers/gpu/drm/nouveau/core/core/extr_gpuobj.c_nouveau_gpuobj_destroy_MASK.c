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
struct TYPE_4__ {scalar_t__ block_size; } ;
struct nouveau_gpuobj {int flags; int size; int /*<<< orphan*/  base; TYPE_2__ heap; scalar_t__ node; int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  heap; } ;

/* Variables and functions */
 int NVOBJ_FLAG_ZERO_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_gpuobj*,int,int) ; 

void
FUNC5(struct nouveau_gpuobj *gpuobj)
{
	int i;

	if (gpuobj->flags & NVOBJ_FLAG_ZERO_FREE) {
		for (i = 0; i < gpuobj->size; i += 4)
			FUNC4(gpuobj, i, 0x00000000);
	}

	if (gpuobj->node) {
		FUNC1(&FUNC3(gpuobj->parent)->heap,
				&gpuobj->node);
	}

	if (gpuobj->heap.block_size)
		FUNC0(&gpuobj->heap);

	FUNC2(&gpuobj->base);
}