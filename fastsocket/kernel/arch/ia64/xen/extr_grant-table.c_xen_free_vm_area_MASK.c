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
struct xen_memory_reservation {int nr_extents; int /*<<< orphan*/  extent_start; int /*<<< orphan*/  domid; int /*<<< orphan*/  extent_order; int /*<<< orphan*/  address_bits; } ;
struct vm_struct {scalar_t__ addr; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,struct xen_memory_reservation*) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  XENMEM_populate_physmap ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 

void FUNC7(struct vm_struct *area)
{
	unsigned int order = FUNC4(area->size);
	unsigned long i;
	unsigned long phys_addr = FUNC2(area->addr);

	/* This area is used for foreign page mappping.
	 * So underlying machine page may not be assigned. */
	for (i = 0; i < (1 << order); i++) {
		unsigned long ret;
		unsigned long gpfn = (phys_addr >> PAGE_SHIFT) + i;
		struct xen_memory_reservation reservation = {
			.nr_extents   = 1,
			.address_bits = 0,
			.extent_order = 0,
			.domid        = DOMID_SELF
		};
		FUNC6(reservation.extent_start, &gpfn);
		ret = FUNC1(XENMEM_populate_physmap,
					   &reservation);
		FUNC0(ret != 1);
	}
	FUNC3((unsigned long)area->addr, order);
	FUNC5(area);
}