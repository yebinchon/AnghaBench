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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_SRBM_WRITE ; 
 int HDP_MEM_COHERENCY_FLUSH_CNTL ; 
 int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int VM_INVALIDATE_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 

void FUNC2(struct radeon_device *rdev, int ridx, struct radeon_vm *vm)
{
	struct radeon_ring *ring = &rdev->ring[ridx];

	if (vm == NULL)
		return;

	FUNC1(ring, FUNC0(DMA_PACKET_SRBM_WRITE, 0, 0, 0, 0));
	if (vm->id < 8) {
		FUNC1(ring, (0xf << 16) | ((VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm->id << 2)) >> 2));
	} else {
		FUNC1(ring, (0xf << 16) | ((VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm->id - 8) << 2)) >> 2));
	}
	FUNC1(ring, vm->pd_gpu_addr >> 12);

	/* flush hdp cache */
	FUNC1(ring, FUNC0(DMA_PACKET_SRBM_WRITE, 0, 0, 0, 0));
	FUNC1(ring, (0xf << 16) | (HDP_MEM_COHERENCY_FLUSH_CNTL >> 2));
	FUNC1(ring, 1);

	/* bits 0-7 are the VM contexts0-7 */
	FUNC1(ring, FUNC0(DMA_PACKET_SRBM_WRITE, 0, 0, 0, 0));
	FUNC1(ring, (0xf << 16) | (VM_INVALIDATE_REQUEST >> 2));
	FUNC1(ring, 1 << vm->id);
}