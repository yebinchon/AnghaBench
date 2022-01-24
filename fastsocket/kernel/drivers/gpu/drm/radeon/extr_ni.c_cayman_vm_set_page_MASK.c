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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct radeon_ib {int* ptr; int length_dw; } ;
struct radeon_device {TYPE_2__* asic; } ;
struct TYPE_3__ {scalar_t__ pt_ring_index; } ;
struct TYPE_4__ {TYPE_1__ vm; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  DMA_PACKET_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PACKET3_ME_WRITE ; 
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ; 
 int RADEON_VM_PAGE_SYSTEM ; 
 int RADEON_VM_PAGE_VALID ; 
 int FUNC2 (struct radeon_device*,int) ; 
 int FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (int) ; 

void FUNC5(struct radeon_device *rdev,
			struct radeon_ib *ib,
			uint64_t pe,
			uint64_t addr, unsigned count,
			uint32_t incr, uint32_t flags)
{
	uint32_t r600_flags = FUNC2(rdev, flags);
	uint64_t value;
	unsigned ndw;

	if (rdev->asic->vm.pt_ring_index == RADEON_RING_TYPE_GFX_INDEX) {
		while (count) {
			ndw = 1 + count * 2;
			if (ndw > 0x3FFF)
				ndw = 0x3FFF;

			ib->ptr[ib->length_dw++] = FUNC1(PACKET3_ME_WRITE, ndw);
			ib->ptr[ib->length_dw++] = pe;
			ib->ptr[ib->length_dw++] = FUNC4(pe) & 0xff;
			for (; ndw > 1; ndw -= 2, --count, pe += 8) {
				if (flags & RADEON_VM_PAGE_SYSTEM) {
					value = FUNC3(rdev, addr);
					value &= 0xFFFFFFFFFFFFF000ULL;
				} else if (flags & RADEON_VM_PAGE_VALID) {
					value = addr;
				} else {
					value = 0;
				}
				addr += incr;
				value |= r600_flags;
				ib->ptr[ib->length_dw++] = value;
				ib->ptr[ib->length_dw++] = FUNC4(value);
			}
		}
	} else {
		while (count) {
			ndw = count * 2;
			if (ndw > 0xFFFFE)
				ndw = 0xFFFFE;

			/* for non-physically contiguous pages (system) */
			ib->ptr[ib->length_dw++] = FUNC0(DMA_PACKET_WRITE, 0, 0, ndw);
			ib->ptr[ib->length_dw++] = pe;
			ib->ptr[ib->length_dw++] = FUNC4(pe) & 0xff;
			for (; ndw > 0; ndw -= 2, --count, pe += 8) {
				if (flags & RADEON_VM_PAGE_SYSTEM) {
					value = FUNC3(rdev, addr);
					value &= 0xFFFFFFFFFFFFF000ULL;
				} else if (flags & RADEON_VM_PAGE_VALID) {
					value = addr;
				} else {
					value = 0;
				}
				addr += incr;
				value |= r600_flags;
				ib->ptr[ib->length_dw++] = value;
				ib->ptr[ib->length_dw++] = FUNC4(value);
			}
		}
		while (ib->length_dw & 0x7)
			ib->ptr[ib->length_dw++] = FUNC0(DMA_PACKET_NOP, 0, 0, 0);
	}
}