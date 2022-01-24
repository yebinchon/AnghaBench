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
typedef  int u32 ;
struct cphy {int dummy; } ;

/* Variables and functions */
 int LINK_ENABLE_BIT ; 
 int /*<<< orphan*/  MDIO_CTRL2 ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct cphy *cphy, u32 do_enable)
{
	u32 led = 0;
#define LINK_ENABLE_BIT 0x1

	FUNC0(cphy, MDIO_MMD_PMAPMD, MDIO_CTRL2, &led);

	if (do_enable & LINK_ENABLE_BIT) {
		led |= LINK_ENABLE_BIT;
		FUNC1(cphy, MDIO_MMD_PMAPMD, MDIO_CTRL2, led);
	} else {
		led &= ~LINK_ENABLE_BIT;
		FUNC1(cphy, MDIO_MMD_PMAPMD, MDIO_CTRL2, led);
	}
	return 0;
}