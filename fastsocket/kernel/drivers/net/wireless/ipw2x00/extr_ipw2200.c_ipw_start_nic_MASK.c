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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int CBD_RESET_REG_PRINCETON_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY ; 
 int /*<<< orphan*/  IPW_GP_CNTRL_RW ; 
 int /*<<< orphan*/  IPW_RESET_REG ; 
 int IPW_RESET_REG_MASTER_DISABLED ; 
 int IPW_RESET_REG_STOP_MASTER ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipw_priv *priv)
{
	FUNC0(">>\n");

	/* prvHwStartNic  release ARC */
	FUNC1(priv, IPW_RESET_REG,
		      IPW_RESET_REG_MASTER_DISABLED |
		      IPW_RESET_REG_STOP_MASTER |
		      CBD_RESET_REG_PRINCETON_RESET);

	/* enable power management */
	FUNC2(priv, IPW_GP_CNTRL_RW,
		    IPW_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY);

	FUNC0("<<\n");
}