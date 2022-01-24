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
struct mpc85xx_l2_pdata {scalar_t__ l2_vbase; } ;
struct edac_device_ctl_info {struct mpc85xx_l2_pdata* pvt_info; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ MPC85XX_L2_ERRINJLO ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct edac_device_ctl_info
					       *edac_dev, const char *data,
					       size_t count)
{
	struct mpc85xx_l2_pdata *pdata = edac_dev->pvt_info;
	if (FUNC0(*data)) {
		FUNC1(pdata->l2_vbase + MPC85XX_L2_ERRINJLO,
			 FUNC2(data, NULL, 0));
		return count;
	}
	return 0;
}