#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wds_oper_type ;
typedef  int /*<<< orphan*/  u8 ;
struct wds_oper_data {struct wds_oper_data* next; int /*<<< orphan*/  type; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__* ap; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ local_info_t ;
struct TYPE_4__ {int /*<<< orphan*/  wds_oper_queue; struct wds_oper_data* wds_oper_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct wds_oper_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(local_info_t *local, u8 *addr, wds_oper_type type)
{
	struct wds_oper_data *entry;

	entry = FUNC0(sizeof(*entry), GFP_ATOMIC);
	if (!entry)
		return;
	FUNC1(entry->addr, addr, ETH_ALEN);
	entry->type = type;
	FUNC3(&local->lock);
	entry->next = local->ap->wds_oper_entries;
	local->ap->wds_oper_entries = entry;
	FUNC4(&local->lock);

	FUNC2(&local->ap->wds_oper_queue);
}