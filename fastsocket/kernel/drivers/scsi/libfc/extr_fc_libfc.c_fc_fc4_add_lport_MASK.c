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
struct fc_lport {int /*<<< orphan*/  lport_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_LPORT_EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fc_lport*) ; 
 int /*<<< orphan*/  fc_local_ports ; 
 int /*<<< orphan*/  fc_lport_notifier_head ; 
 int /*<<< orphan*/  fc_prov_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fc_lport *lport)
{
	FUNC2(&fc_prov_mutex);
	FUNC1(&lport->lport_list, &fc_local_ports);
	FUNC0(&fc_lport_notifier_head,
				     FC_LPORT_EV_ADD, lport);
	FUNC3(&fc_prov_mutex);
}