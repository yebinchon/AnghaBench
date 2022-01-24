#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nes_cm_node {int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;
struct nes_cm_core {int /*<<< orphan*/  ht_lock; int /*<<< orphan*/  ht_node_cnt; struct list_head connected_nodes; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct nes_cm_core *cm_core, struct nes_cm_node *cm_node)
{
	unsigned long flags;
	struct list_head *hte;

	if (!cm_node || !cm_core)
		return -EINVAL;

	FUNC2(NES_DBG_CM, "Adding Node %p to Active Connection HT\n",
		  cm_node);

	FUNC3(&cm_core->ht_lock, flags);

	/* get a handle on the hash table element (list head for this slot) */
	hte = &cm_core->connected_nodes;
	FUNC1(&cm_node->list, hte);
	FUNC0(&cm_core->ht_node_cnt);

	FUNC4(&cm_core->ht_lock, flags);

	return 0;
}