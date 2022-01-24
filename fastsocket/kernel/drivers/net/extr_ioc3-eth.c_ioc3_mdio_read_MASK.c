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
struct net_device {int dummy; } ;
struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int MICR_BUSY ; 
 int MICR_PHYADDR_SHIFT ; 
 int MICR_READTRIG ; 
 int MIDR_DATA_MASK ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ioc3_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, int phy, int reg)
{
	struct ioc3_private *ip = FUNC3(dev);
	struct ioc3 *ioc3 = ip->regs;

	while (FUNC0() & MICR_BUSY);
	FUNC2((phy << MICR_PHYADDR_SHIFT) | reg | MICR_READTRIG);
	while (FUNC0() & MICR_BUSY);

	return FUNC1() & MIDR_DATA_MASK;
}