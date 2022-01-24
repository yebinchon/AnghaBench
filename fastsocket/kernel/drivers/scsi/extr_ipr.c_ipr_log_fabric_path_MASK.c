#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct ipr_hostrcb_fabric_desc {scalar_t__ path_state; int cascaded_expander; int phy; int /*<<< orphan*/  ioa_port; } ;
struct ipr_hostrcb {int dummy; } ;
struct TYPE_4__ {scalar_t__ active; scalar_t__ state; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ IPR_PATH_ACTIVE_MASK ; 
 scalar_t__ IPR_PATH_STATE_MASK ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_hostrcb*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* path_active_desc ; 
 TYPE_1__* path_state_desc ; 

__attribute__((used)) static void FUNC3(struct ipr_hostrcb *hostrcb,
				struct ipr_hostrcb_fabric_desc *fabric)
{
	int i, j;
	u8 path_state = fabric->path_state;
	u8 active = path_state & IPR_PATH_ACTIVE_MASK;
	u8 state = path_state & IPR_PATH_STATE_MASK;

	for (i = 0; i < FUNC0(path_active_desc); i++) {
		if (path_active_desc[i].active != active)
			continue;

		for (j = 0; j < FUNC0(path_state_desc); j++) {
			if (path_state_desc[j].state != state)
				continue;

			if (fabric->cascaded_expander == 0xff && fabric->phy == 0xff) {
				FUNC2(hostrcb, "%s %s: IOA Port=%d\n",
					     path_active_desc[i].desc, path_state_desc[j].desc,
					     fabric->ioa_port);
			} else if (fabric->cascaded_expander == 0xff) {
				FUNC2(hostrcb, "%s %s: IOA Port=%d, Phy=%d\n",
					     path_active_desc[i].desc, path_state_desc[j].desc,
					     fabric->ioa_port, fabric->phy);
			} else if (fabric->phy == 0xff) {
				FUNC2(hostrcb, "%s %s: IOA Port=%d, Cascade=%d\n",
					     path_active_desc[i].desc, path_state_desc[j].desc,
					     fabric->ioa_port, fabric->cascaded_expander);
			} else {
				FUNC2(hostrcb, "%s %s: IOA Port=%d, Cascade=%d, Phy=%d\n",
					     path_active_desc[i].desc, path_state_desc[j].desc,
					     fabric->ioa_port, fabric->cascaded_expander, fabric->phy);
			}
			return;
		}
	}

	FUNC1("Path state=%02X IOA Port=%d Cascade=%d Phy=%d\n", path_state,
		fabric->ioa_port, fabric->cascaded_expander, fabric->phy);
}