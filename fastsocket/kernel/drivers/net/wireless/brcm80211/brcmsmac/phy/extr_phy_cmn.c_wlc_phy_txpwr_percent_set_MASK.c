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
typedef  int /*<<< orphan*/  u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int /*<<< orphan*/  txpwr_percent; } ;

/* Variables and functions */

void FUNC0(struct brcms_phy_pub *ppi, u8 txpwr_percent)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;

	pi->txpwr_percent = txpwr_percent;
}