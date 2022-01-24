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

/* Variables and functions */
 int FUNC0 (int) ; 
 int MIIMU_OPMODE_WRITE ; 
 int FUNC1 (int) ; 
 int MIIMU_PHY_NRES ; 
 int MIIMU_PREAMBLE ; 
 int FUNC2 (int) ; 
 int MIIMU_SNRDY ; 
 int /*<<< orphan*/  NETX_MIIMU ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct net_device *ndev, int phy_id, int reg, int value)
{
	unsigned int val;

	val = MIIMU_SNRDY | MIIMU_PREAMBLE | FUNC1(phy_id) |
	      FUNC2(reg) | MIIMU_PHY_NRES | MIIMU_OPMODE_WRITE |
	      FUNC0(value);

	FUNC4(val, NETX_MIIMU);
	while (FUNC3(NETX_MIIMU) & MIIMU_SNRDY);
}