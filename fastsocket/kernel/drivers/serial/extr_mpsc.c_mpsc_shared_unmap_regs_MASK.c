#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sdma_intr_base_p; scalar_t__ mpsc_routing_base_p; int /*<<< orphan*/ * sdma_intr_base; int /*<<< orphan*/ * mpsc_routing_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPSC_ROUTING_REG_BLOCK_SIZE ; 
 int /*<<< orphan*/  MPSC_SDMA_INTR_REG_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mpsc_shared_regs ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (!mpsc_shared_regs.mpsc_routing_base) {
		FUNC0(mpsc_shared_regs.mpsc_routing_base);
		FUNC1(mpsc_shared_regs.mpsc_routing_base_p,
				MPSC_ROUTING_REG_BLOCK_SIZE);
	}
	if (!mpsc_shared_regs.sdma_intr_base) {
		FUNC0(mpsc_shared_regs.sdma_intr_base);
		FUNC1(mpsc_shared_regs.sdma_intr_base_p,
				MPSC_SDMA_INTR_REG_BLOCK_SIZE);
	}

	mpsc_shared_regs.mpsc_routing_base = NULL;
	mpsc_shared_regs.sdma_intr_base = NULL;

	mpsc_shared_regs.mpsc_routing_base_p = 0;
	mpsc_shared_regs.sdma_intr_base_p = 0;
}