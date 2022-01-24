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
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  DMA_PACKET_WRITE ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ; 
 int RADEON_VM_PAGE_SYSTEM ; 
 int RADEON_VM_PAGE_VALID ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct radeon_device*,int) ; 
 int FUNC6 (struct radeon_device*,int) ; 
 int FUNC7 (int) ; 

void FUNC8(struct radeon_device *rdev,
		    struct radeon_ib *ib,
		    uint64_t pe,
		    uint64_t addr, unsigned count,
		    uint32_t incr, uint32_t flags)
{
	uint32_t r600_flags = FUNC5(rdev, flags);
	uint64_t value;
	unsigned ndw;

	if (rdev->asic->vm.pt_ring_index == RADEON_RING_TYPE_GFX_INDEX) {
		while (count) {
			ndw = 2 + count * 2;
			if (ndw > 0x3FFE)
				ndw = 0x3FFE;

			ib->ptr[ib->length_dw++] = FUNC2(PACKET3_WRITE_DATA, ndw);
			ib->ptr[ib->length_dw++] = (FUNC4(0) |
					FUNC3(1));
			ib->ptr[ib->length_dw++] = pe;
			ib->ptr[ib->length_dw++] = FUNC7(pe);
			for (; ndw > 2; ndw -= 2, --count, pe += 8) {
				if (flags & RADEON_VM_PAGE_SYSTEM) {
					value = FUNC6(rdev, addr);
					value &= 0xFFFFFFFFFFFFF000ULL;
				} else if (flags & RADEON_VM_PAGE_VALID) {
					value = addr;
				} else {
					value = 0;
				}
				addr += incr;
				value |= r600_flags;
				ib->ptr[ib->length_dw++] = value;
				ib->ptr[ib->length_dw++] = FUNC7(value);
			}
		}
	} else {
		/* DMA */
		if (flags & RADEON_VM_PAGE_SYSTEM) {
			while (count) {
				ndw = count * 2;
				if (ndw > 0xFFFFE)
					ndw = 0xFFFFE;

				/* for non-physically contiguous pages (system) */
				ib->ptr[ib->length_dw++] = FUNC0(DMA_PACKET_WRITE, 0, 0, 0, ndw);
				ib->ptr[ib->length_dw++] = pe;
				ib->ptr[ib->length_dw++] = FUNC7(pe) & 0xff;
				for (; ndw > 0; ndw -= 2, --count, pe += 8) {
					if (flags & RADEON_VM_PAGE_SYSTEM) {
						value = FUNC6(rdev, addr);
						value &= 0xFFFFFFFFFFFFF000ULL;
					} else if (flags & RADEON_VM_PAGE_VALID) {
						value = addr;
					} else {
						value = 0;
					}
					addr += incr;
					value |= r600_flags;
					ib->ptr[ib->length_dw++] = value;
					ib->ptr[ib->length_dw++] = FUNC7(value);
				}
			}
		} else {
			while (count) {
				ndw = count * 2;
				if (ndw > 0xFFFFE)
					ndw = 0xFFFFE;

				if (flags & RADEON_VM_PAGE_VALID)
					value = addr;
				else
					value = 0;
				/* for physically contiguous pages (vram) */
				ib->ptr[ib->length_dw++] = FUNC1(ndw);
				ib->ptr[ib->length_dw++] = pe; /* dst addr */
				ib->ptr[ib->length_dw++] = FUNC7(pe) & 0xff;
				ib->ptr[ib->length_dw++] = r600_flags; /* mask */
				ib->ptr[ib->length_dw++] = 0;
				ib->ptr[ib->length_dw++] = value; /* value */
				ib->ptr[ib->length_dw++] = FUNC7(value);
				ib->ptr[ib->length_dw++] = incr; /* increment size */
				ib->ptr[ib->length_dw++] = 0;
				pe += ndw * 4;
				addr += (ndw / 2) * incr;
				count -= ndw / 2;
			}
		}
		while (ib->length_dw & 0x7)
			ib->ptr[ib->length_dw++] = FUNC0(DMA_PACKET_NOP, 0, 0, 0, 0);
	}
}