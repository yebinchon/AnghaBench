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
struct niu {int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM8704_USER_DEV3_ADDR ; 
 int FUNC0 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct niu *np, int reg)
{
	int err = FUNC0(np, np->phy_addr, BCM8704_USER_DEV3_ADDR, reg);
	if (err < 0)
		return err;
	err = FUNC0(np, np->phy_addr, BCM8704_USER_DEV3_ADDR, reg);
	if (err < 0)
		return err;
	return 0;
}