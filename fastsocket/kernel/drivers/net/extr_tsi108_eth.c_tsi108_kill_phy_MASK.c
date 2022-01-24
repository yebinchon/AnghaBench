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
struct tsi108_prv_data {scalar_t__ phy_ok; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 struct tsi108_prv_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  phy_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tsi108_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct tsi108_prv_data *data = FUNC0(dev);
	unsigned long flags;

	FUNC1(&phy_lock, flags);
	FUNC3(data, MII_BMCR, BMCR_PDOWN);
	data->phy_ok = 0;
	FUNC2(&phy_lock, flags);
}