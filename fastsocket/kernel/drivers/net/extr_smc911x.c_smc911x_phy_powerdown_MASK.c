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
struct smc911x_local {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int BMCR_PDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct smc911x_local*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct smc911x_local*,int,unsigned int) ; 
 struct smc911x_local* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int phy)
{
	struct smc911x_local *lp = FUNC2(dev);
	unsigned int bmcr;

	/* Enter Link Disable state */
	FUNC0(lp, phy, bmcr);
	bmcr |= BMCR_PDOWN;
	FUNC1(lp, phy, bmcr);
}