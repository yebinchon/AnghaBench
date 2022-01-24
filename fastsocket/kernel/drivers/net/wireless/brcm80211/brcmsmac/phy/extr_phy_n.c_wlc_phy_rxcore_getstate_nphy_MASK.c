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
typedef  int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct brcms_phy*,int) ; 

u8 FUNC1(struct brcms_phy_pub *pih)
{
	u16 regval, rxen_bits;
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	regval = FUNC0(pi, 0xa2);
	rxen_bits = (regval >> 4) & 0xf;

	return (u8) rxen_bits;
}