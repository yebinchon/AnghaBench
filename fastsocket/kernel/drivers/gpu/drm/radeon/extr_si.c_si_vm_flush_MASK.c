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
struct radeon_vm {int id; int pd_gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int HDP_MEM_COHERENCY_FLUSH_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_PFP_SYNC_ME ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int VM_INVALIDATE_REQUEST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*,int) ; 

void FUNC4(struct radeon_device *rdev, int ridx, struct radeon_vm *vm)
{
	struct radeon_ring *ring = &rdev->ring[ridx];

	if (vm == NULL)
		return;

	/* write new base address */
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(0) |
				 FUNC1(0)));

	if (vm->id < 8) {
		FUNC3(ring,
				  (VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm->id << 2)) >> 2);
	} else {
		FUNC3(ring,
				  (VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm->id - 8) << 2)) >> 2);
	}
	FUNC3(ring, 0);
	FUNC3(ring, vm->pd_gpu_addr >> 12);

	/* flush hdp cache */
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(0) |
				 FUNC1(0)));
	FUNC3(ring, HDP_MEM_COHERENCY_FLUSH_CNTL >> 2);
	FUNC3(ring, 0);
	FUNC3(ring, 0x1);

	/* bits 0-15 are the VM contexts0-15 */
	FUNC3(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC3(ring, (FUNC2(0) |
				 FUNC1(0)));
	FUNC3(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC3(ring, 0);
	FUNC3(ring, 1 << vm->id);

	/* sync PFP to ME, otherwise we might get invalid PFP reads */
	FUNC3(ring, FUNC0(PACKET3_PFP_SYNC_ME, 0));
	FUNC3(ring, 0x0);
}