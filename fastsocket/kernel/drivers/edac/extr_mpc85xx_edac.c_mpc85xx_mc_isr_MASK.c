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
struct mpc85xx_mc_pdata {scalar_t__ mc_vbase; } ;
struct mem_ctl_info {struct mpc85xx_mc_pdata* pvt_info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MPC85XX_MC_ERR_DETECT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct mem_ctl_info *mci = dev_id;
	struct mpc85xx_mc_pdata *pdata = mci->pvt_info;
	u32 err_detect;

	err_detect = FUNC0(pdata->mc_vbase + MPC85XX_MC_ERR_DETECT);
	if (!err_detect)
		return IRQ_NONE;

	FUNC1(mci);

	return IRQ_HANDLED;
}