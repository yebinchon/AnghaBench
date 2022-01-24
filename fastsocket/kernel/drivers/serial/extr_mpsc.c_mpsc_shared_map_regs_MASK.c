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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mpsc_routing_base_p; void* mpsc_routing_base; int /*<<< orphan*/  sdma_intr_base_p; void* sdma_intr_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  MPSC_ROUTING_BASE_ORDER ; 
 int /*<<< orphan*/  MPSC_ROUTING_REG_BLOCK_SIZE ; 
 int /*<<< orphan*/  MPSC_SDMA_INTR_BASE_ORDER ; 
 int /*<<< orphan*/  MPSC_SDMA_INTR_REG_BLOCK_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ mpsc_shared_regs ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pd)
{
	struct resource	*r;

	if ((r = FUNC3(pd, IORESOURCE_MEM,
					MPSC_ROUTING_BASE_ORDER))
			&& FUNC5(r->start,
				MPSC_ROUTING_REG_BLOCK_SIZE,
				"mpsc_routing_regs")) {
		mpsc_shared_regs.mpsc_routing_base = FUNC0(r->start,
				MPSC_ROUTING_REG_BLOCK_SIZE);
		mpsc_shared_regs.mpsc_routing_base_p = r->start;
	} else {
		FUNC2("MPSC routing base");
		return -ENOMEM;
	}

	if ((r = FUNC3(pd, IORESOURCE_MEM,
					MPSC_SDMA_INTR_BASE_ORDER))
			&& FUNC5(r->start,
				MPSC_SDMA_INTR_REG_BLOCK_SIZE,
				"sdma_intr_regs")) {
		mpsc_shared_regs.sdma_intr_base = FUNC0(r->start,
			MPSC_SDMA_INTR_REG_BLOCK_SIZE);
		mpsc_shared_regs.sdma_intr_base_p = r->start;
	} else {
		FUNC1(mpsc_shared_regs.mpsc_routing_base);
		FUNC4(mpsc_shared_regs.mpsc_routing_base_p,
				MPSC_ROUTING_REG_BLOCK_SIZE);
		FUNC2("SDMA intr base");
		return -ENOMEM;
	}

	return 0;
}