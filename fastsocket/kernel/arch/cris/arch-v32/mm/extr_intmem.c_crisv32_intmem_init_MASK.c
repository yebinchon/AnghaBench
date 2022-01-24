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
struct intmem_allocation {int /*<<< orphan*/  entry; int /*<<< orphan*/  status; scalar_t__ offset; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MEM_INTMEM_SIZE ; 
 scalar_t__ MEM_INTMEM_START ; 
 scalar_t__ RESERVED_SIZE ; 
 int /*<<< orphan*/  STATUS_FREE ; 
 int /*<<< orphan*/  intmem_allocations ; 
 int /*<<< orphan*/  intmem_virtual ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	static int initiated = 0;
	if (!initiated) {
		struct intmem_allocation* alloc =
		  (struct intmem_allocation*)FUNC2(sizeof *alloc, GFP_KERNEL);
		FUNC0(&intmem_allocations);
		intmem_virtual = FUNC1(MEM_INTMEM_START + RESERVED_SIZE,
					 MEM_INTMEM_SIZE - RESERVED_SIZE);
		initiated = 1;
		alloc->size = MEM_INTMEM_SIZE - RESERVED_SIZE;
		alloc->offset = 0;
		alloc->status = STATUS_FREE;
		FUNC3(&alloc->entry, &intmem_allocations);
	}
}