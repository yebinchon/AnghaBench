#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct page {int dummy; } ;
struct agp_bridge_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ALI_CACHE_FLUSH_ADDR_MASK ; 
 int /*<<< orphan*/  ALI_CACHE_FLUSH_CTRL ; 
 int ALI_CACHE_FLUSH_EN ; 
 TYPE_1__* agp_bridge ; 
 struct page* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct page *FUNC4(struct agp_bridge_data *bridge)
{
	struct page *page = FUNC0(agp_bridge);
	u32 temp;

	if (!page)
		return NULL;

	FUNC2(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL, &temp);
	FUNC3(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
			(((temp & ALI_CACHE_FLUSH_ADDR_MASK) |
			  FUNC1(page)) | ALI_CACHE_FLUSH_EN ));
	return page;
}