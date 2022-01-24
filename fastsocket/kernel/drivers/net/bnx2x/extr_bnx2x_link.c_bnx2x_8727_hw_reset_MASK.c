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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_1 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 scalar_t__ FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x_phy *phy,
				struct link_params *params) {
	u32 swap_val, swap_override;
	u8 port;
	/* The PHY reset is controlled by GPIO 1. Fake the port number
	 * to cancel the swap done in set_gpio()
	 */
	struct bnx2x *bp = params->bp;
	swap_val = FUNC0(bp, NIG_REG_PORT_SWAP);
	swap_override = FUNC0(bp, NIG_REG_STRAP_OVERRIDE);
	port = (swap_val && swap_override) ^ 1;
	FUNC1(bp, MISC_REGISTERS_GPIO_1,
		       MISC_REGISTERS_GPIO_OUTPUT_LOW, port);
}