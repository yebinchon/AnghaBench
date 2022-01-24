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
struct cryptocop_int_operation {struct cryptocop_dma_desc* cdesc_in; struct cryptocop_dma_desc* cdesc_out; void* alloc_ptr; } ;
struct cryptocop_dma_desc {struct cryptocop_dma_desc* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cryptocop_dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct cryptocop_int_operation*,void*) ; 

__attribute__((used)) static void FUNC4(struct cryptocop_int_operation *iop)
{
	void                      *ptr = iop->alloc_ptr;
	struct cryptocop_dma_desc *cd = iop->cdesc_out;
	struct cryptocop_dma_desc *next;

	FUNC0(FUNC3("delete_internal_operation: iop=0x%p, alloc_ptr=0x%p\n", iop, ptr));

	while (cd) {
		next = cd->next;
		FUNC1(cd);
		cd = next;
	}
	cd = iop->cdesc_in;
	while (cd) {
		next = cd->next;
		FUNC1(cd);
		cd = next;
	}
	FUNC2(ptr);
}