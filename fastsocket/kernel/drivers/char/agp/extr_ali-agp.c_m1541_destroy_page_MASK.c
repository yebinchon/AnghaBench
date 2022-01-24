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
typedef  int u32 ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AGP_PAGE_DESTROY_UNMAP ; 
 int ALI_CACHE_FLUSH_ADDR_MASK ; 
 int /*<<< orphan*/  ALI_CACHE_FLUSH_CTRL ; 
 int ALI_CACHE_FLUSH_EN ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct page *page, int flags)
{
	u32 temp;

	if (page == NULL)
		return;

	if (flags & AGP_PAGE_DESTROY_UNMAP) {
		FUNC1();

		FUNC3(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL, &temp);
		FUNC4(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
				       (((temp & ALI_CACHE_FLUSH_ADDR_MASK) |
					 FUNC2(page)) | ALI_CACHE_FLUSH_EN));
	}
	FUNC0(page, flags);
}