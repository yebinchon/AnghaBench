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
struct resource_list_x {int dummy; } ;
struct resource_list {TYPE_1__* dev; struct resource* res; struct resource_list* next; } ;
struct resource {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; struct resource* resource; } ;

/* Variables and functions */
 int IORESOURCE_ROM_ENABLE ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct resource_list_x*,TYPE_1__*,struct resource*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 

__attribute__((used)) static void FUNC5(struct resource_list *head,
				 struct resource_list_x *fail_head)
{
	struct resource *res;
	struct resource_list *list;
	int idx;

	for (list = head->next; list; list = list->next) {
		res = list->res;
		idx = res - &list->dev->resource[0];
		if (FUNC4(res) && FUNC1(list->dev, idx)) {
			if (fail_head && !FUNC2(list->dev->bus)) {
				/*
				 * if the failed res is for ROM BAR, and it will
				 * be enabled later, don't add it to the list
				 */
				if (!((idx == PCI_ROM_RESOURCE) &&
				      (!(res->flags & IORESOURCE_ROM_ENABLE))))
					FUNC0(fail_head, list->dev, res);
			}
			FUNC3(res);
		}
	}
}