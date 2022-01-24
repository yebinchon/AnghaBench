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
typedef  int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_GP2_STATUS_GP_2_0 ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static int FUNC2(struct bnx2x_phy *phy,
				     struct link_params *params)
{
	u16 gp2_status_reg0, lane;
	struct bnx2x *bp = params->bp;

	lane = FUNC1(phy, params);

	FUNC0(bp, phy, MDIO_WC_DEVAD, MDIO_WC_REG_GP2_STATUS_GP_2_0,
				 &gp2_status_reg0);

	return (gp2_status_reg0 >> (8+lane)) & 0x1;
}