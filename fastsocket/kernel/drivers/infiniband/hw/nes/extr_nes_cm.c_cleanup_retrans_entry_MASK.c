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
struct nes_cm_node {int /*<<< orphan*/  retrans_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct nes_cm_node *cm_node)
{
	unsigned long flags;

	FUNC1(&cm_node->retrans_list_lock, flags);
	FUNC0(cm_node);
	FUNC2(&cm_node->retrans_list_lock, flags);
}