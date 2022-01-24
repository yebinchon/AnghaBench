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
typedef  int /*<<< orphan*/  u32 ;
struct link_vars {scalar_t__ mac_type; int /*<<< orphan*/  link_up; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ MAC_TYPE_EMAC ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct link_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct link_params *params, struct link_vars *vars,
			 u32 pfc_frames_sent[2],
			 u32 pfc_frames_received[2])
{
	/* Read pfc statistic */
	struct bnx2x *bp = params->bp;

	FUNC0(NETIF_MSG_LINK, "pfc statistic\n");

	if (!vars->link_up)
		return;

	if (vars->mac_type == MAC_TYPE_EMAC) {
		FUNC0(NETIF_MSG_LINK, "About to read PFC stats from EMAC\n");
		FUNC1(params, pfc_frames_sent,
					pfc_frames_received);
	}
}