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
typedef  int u32 ;
struct TYPE_4__ {int page_order; } ;
struct TYPE_3__ {int gatt_bus_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  current_size; } ;

/* Variables and functions */
 int ALI_CACHE_FLUSH_ADDR_MASK ; 
 int /*<<< orphan*/  ALI_CACHE_FLUSH_CTRL ; 
 int ALI_CACHE_FLUSH_EN ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i, page_count;
	u32 temp;

	FUNC1();

	page_count = 1 << FUNC0(agp_bridge->current_size)->page_order;
	for (i = 0; i < PAGE_SIZE * page_count; i += PAGE_SIZE) {
		FUNC2(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
				&temp);
		FUNC3(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
				(((temp & ALI_CACHE_FLUSH_ADDR_MASK) |
				  (agp_bridge->gatt_bus_addr + i)) |
				 ALI_CACHE_FLUSH_EN));
	}
}