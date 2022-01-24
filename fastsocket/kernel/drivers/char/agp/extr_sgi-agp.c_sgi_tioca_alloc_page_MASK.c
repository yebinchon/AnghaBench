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
struct tioca_kernel {int ca_closest_node; } ;
struct page {int dummy; } ;
struct agp_bridge_data {scalar_t__ dev_private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_memory_agp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* agp_bridge ; 
 struct page* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static struct page *FUNC3(struct agp_bridge_data *bridge)
{
	struct page *page;
	int nid;
	struct tioca_kernel *info =
	    (struct tioca_kernel *)bridge->dev_private_data;

	nid = info->ca_closest_node;
	page = FUNC0(nid, GFP_KERNEL, 0);
	if (!page)
		return NULL;

	FUNC2(page);
	FUNC1(&agp_bridge->current_memory_agp);
	return page;
}