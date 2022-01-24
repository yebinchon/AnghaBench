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
struct mii_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM5221_SHDOW_AUX_MODE4 ; 
 int /*<<< orphan*/  MII_BCM5221_TEST ; 
 int MII_BCM5221_TEST_ENABLE_SHADOWS ; 
 int MII_BCM5241_SHDOW_AUX_MODE4_STANDBYPWR ; 
 int FUNC0 (struct mii_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mii_phy* phy)
{
	u16 data;

	data = FUNC0(phy, MII_BCM5221_TEST);
	FUNC1(phy, MII_BCM5221_TEST,
		data | MII_BCM5221_TEST_ENABLE_SHADOWS);

	data = FUNC0(phy, MII_BCM5221_SHDOW_AUX_MODE4);
	FUNC1(phy, MII_BCM5221_SHDOW_AUX_MODE4,
		  data | MII_BCM5241_SHDOW_AUX_MODE4_STANDBYPWR);

	return 0;
}