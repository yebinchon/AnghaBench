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
struct efx_nic {int phy_mode; scalar_t__ state; int /*<<< orphan*/  net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum efx_phy_mode { ____Placeholder_efx_phy_mode } efx_phy_mode ;

/* Variables and functions */
 int EBUSY ; 
 int PHY_MODE_SPECIAL ; 
 scalar_t__ STATE_READY ; 
 int FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct efx_nic* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct efx_nic *efx = FUNC4(FUNC8(dev));
	enum efx_phy_mode old_mode, new_mode;
	int err;

	FUNC5();
	old_mode = efx->phy_mode;
	if (count == 0 || *buf == '0')
		new_mode = old_mode & ~PHY_MODE_SPECIAL;
	else
		new_mode = PHY_MODE_SPECIAL;
	if (!((old_mode ^ new_mode) & PHY_MODE_SPECIAL)) {
		err = 0;
	} else if (efx->state != STATE_READY || FUNC3(efx->net_dev)) {
		err = -EBUSY;
	} else {
		/* Reset the PHY, reconfigure the MAC and enable/disable
		 * MAC stats accordingly. */
		efx->phy_mode = new_mode;
		if (new_mode & PHY_MODE_SPECIAL)
			FUNC2(efx);
		err = FUNC7(efx);
		if (!err)
			err = FUNC0(efx);
		if (!(new_mode & PHY_MODE_SPECIAL))
			FUNC1(efx);
	}
	FUNC6();

	return err ? err : count;
}