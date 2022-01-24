#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
typedef  int resource_size_t ;
struct TYPE_6__ {unsigned long base_addr; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_5__ {TYPE_1__ resource; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 scalar_t__ DFX_MMIO ; 
 int PI_ESIC_K_CSR_IO_LEN ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_CMP_0 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_CMP_1 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_CMP_2 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_MASK_0 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_MASK_1 ; 
 scalar_t__ PI_ESIC_K_MEM_ADD_MASK_2 ; 
 int PI_MEM_ADD_MASK_M ; 
 int PI_TC_K_CSR_LEN ; 
 int PI_TC_K_CSR_OFFSET ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 TYPE_2__* FUNC8 (struct device*) ; 

__attribute__((used)) static void FUNC9(struct device *bdev,
			 resource_size_t *bar_start, resource_size_t *bar_len)
{
	int dfx_bus_pci = FUNC1(bdev);
	int dfx_bus_eisa = FUNC0(bdev);
	int dfx_bus_tc = FUNC2(bdev);
	int dfx_use_mmio = DFX_MMIO || dfx_bus_tc;

	if (dfx_bus_pci) {
		int num = dfx_use_mmio ? 0 : 1;

		*bar_start = FUNC5(FUNC7(bdev), num);
		*bar_len = FUNC4(FUNC7(bdev), num);
	}
	if (dfx_bus_eisa) {
		unsigned long base_addr = FUNC6(bdev)->base_addr;
		resource_size_t bar;

		if (dfx_use_mmio) {
			bar = FUNC3(base_addr + PI_ESIC_K_MEM_ADD_CMP_2);
			bar <<= 8;
			bar |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_CMP_1);
			bar <<= 8;
			bar |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_CMP_0);
			bar <<= 16;
			*bar_start = bar;
			bar = FUNC3(base_addr + PI_ESIC_K_MEM_ADD_MASK_2);
			bar <<= 8;
			bar |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_MASK_1);
			bar <<= 8;
			bar |= FUNC3(base_addr + PI_ESIC_K_MEM_ADD_MASK_0);
			bar <<= 16;
			*bar_len = (bar | PI_MEM_ADD_MASK_M) + 1;
		} else {
			*bar_start = base_addr;
			*bar_len = PI_ESIC_K_CSR_IO_LEN;
		}
	}
	if (dfx_bus_tc) {
		*bar_start = FUNC8(bdev)->resource.start +
			     PI_TC_K_CSR_OFFSET;
		*bar_len = PI_TC_K_CSR_LEN;
	}
}