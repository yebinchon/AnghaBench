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
struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int using_extphy; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  HW_CFG ; 
 unsigned int HW_CFG_EXT_PHY_DET_ ; 
 int SMSC911X_FORCE_EXTERNAL_PHY ; 
 int SMSC911X_FORCE_INTERNAL_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*) ; 
 unsigned int FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct smsc911x_data *pdata)
{
	unsigned int hwcfg = FUNC2(pdata, HW_CFG);

	if (pdata->config.flags & SMSC911X_FORCE_INTERNAL_PHY) {
		FUNC0(HW, "Forcing internal PHY");
		pdata->using_extphy = 0;
	} else if (pdata->config.flags & SMSC911X_FORCE_EXTERNAL_PHY) {
		FUNC0(HW, "Forcing external PHY");
		FUNC1(pdata);
		pdata->using_extphy = 1;
	} else if (hwcfg & HW_CFG_EXT_PHY_DET_) {
		FUNC0(HW, "HW_CFG EXT_PHY_DET set, using external PHY");
		FUNC1(pdata);
		pdata->using_extphy = 1;
	} else {
		FUNC0(HW, "HW_CFG EXT_PHY_DET clear, using internal PHY");
		pdata->using_extphy = 0;
	}
}