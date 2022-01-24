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
typedef  int u16 ;
struct smc_private {int /*<<< orphan*/  lock; } ;
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 struct smc_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC6(struct net_device *dev)
{
	struct smc_private *smc = FUNC2(dev);
	unsigned int ioaddr = dev->base_addr;
	u16 saved_bank = FUNC1(ioaddr + BANK_SELECT);
	u32 ret;

	FUNC4(&smc->lock);
	FUNC0(3);
	ret = FUNC3(dev);
	FUNC0(saved_bank);
	FUNC5(&smc->lock);
	return ret;
}