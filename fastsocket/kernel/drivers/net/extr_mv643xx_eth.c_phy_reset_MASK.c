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
struct mv643xx_eth_private {int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mv643xx_eth_private *mp)
{
	int data;

	data = FUNC0(mp->phy, MII_BMCR);
	if (data < 0)
		return;

	data |= BMCR_RESET;
	if (FUNC1(mp->phy, MII_BMCR, data) < 0)
		return;

	do {
		data = FUNC0(mp->phy, MII_BMCR);
	} while (data >= 0 && data & BMCR_RESET);
}