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
struct smc_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; } ;
struct net_device {unsigned int base_addr; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int,int /*<<< orphan*/ *) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 int FUNC3 (scalar_t__) ; 
 struct smc_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct smc_private *smc = FUNC4(dev);
	struct mii_ioctl_data *mii = FUNC2(rq);
	int rc = 0;
	u16 saved_bank;
	unsigned int ioaddr = dev->base_addr;

	if (!FUNC5(dev))
		return -EINVAL;

	FUNC6(&smc->lock);
	saved_bank = FUNC3(ioaddr + BANK_SELECT);
	FUNC0(3);
	rc = FUNC1(&smc->mii_if, mii, cmd, NULL);
	FUNC0(saved_bank);
	FUNC7(&smc->lock);
	return rc;
}