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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct ehea_port {TYPE_1__* mc_list; } ;
struct ehea_mc_list {int /*<<< orphan*/  list; int /*<<< orphan*/  macaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  H_REG_BCMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ehea_mc_list*) ; 
 struct ehea_mc_list* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ehea_port *port, u8 *mc_mac_addr)
{
	struct ehea_mc_list *ehea_mcl_entry;
	u64 hret;

	ehea_mcl_entry = FUNC4(sizeof(*ehea_mcl_entry), GFP_ATOMIC);
	if (!ehea_mcl_entry) {
		FUNC1("no mem for mcl_entry");
		return;
	}

	FUNC0(&ehea_mcl_entry->list);

	FUNC6(&ehea_mcl_entry->macaddr, mc_mac_addr, ETH_ALEN);

	hret = FUNC2(port, ehea_mcl_entry->macaddr,
					 H_REG_BCMC);
	if (!hret)
		FUNC5(&ehea_mcl_entry->list, &port->mc_list->list);
	else {
		FUNC1("failed registering mcast MAC");
		FUNC3(ehea_mcl_entry);
	}
}