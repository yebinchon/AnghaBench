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
typedef  int /*<<< orphan*/  u8 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC2 (struct link_params*,struct bnx2x_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct link_params*,struct bnx2x_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct link_params *params,
				      struct bnx2x_phy *phy,
				      u8 tx_en)
{
	struct bnx2x *bp = params->bp;
	FUNC1(NETIF_MSG_LINK, "Setting SFP+ transmitter to %d\n", tx_en);
	if (FUNC0(bp))
		FUNC3(params, phy, tx_en);
	else
		FUNC2(params, phy, tx_en);
}