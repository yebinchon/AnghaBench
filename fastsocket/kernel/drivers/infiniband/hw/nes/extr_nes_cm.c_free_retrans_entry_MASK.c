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
struct nes_timer_entry {int /*<<< orphan*/  skb; } ;
struct nes_cm_node {int /*<<< orphan*/  cm_core; struct nes_timer_entry* send_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_timer_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nes_cm_node*) ; 

__attribute__((used)) static void FUNC3(struct nes_cm_node *cm_node)
{
	struct nes_timer_entry *send_entry;

	send_entry = cm_node->send_entry;
	if (send_entry) {
		cm_node->send_entry = NULL;
		FUNC0(send_entry->skb);
		FUNC1(send_entry);
		FUNC2(cm_node->cm_core, cm_node);
	}
}