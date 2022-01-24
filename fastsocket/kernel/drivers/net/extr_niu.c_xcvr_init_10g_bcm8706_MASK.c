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
typedef  int /*<<< orphan*/  u64 ;
struct niu {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIF_CONFIG ; 
 int /*<<< orphan*/  MIF_CONFIG_INDIRECT_MODE ; 
 int NIU_FLAGS_HOTPLUG_PHY ; 
 int NIU_FLAGS_HOTPLUG_PHY_PRESENT ; 
 int /*<<< orphan*/  XMAC_CONFIG ; 
 int /*<<< orphan*/  XMAC_CONFIG_FORCE_LED_ON ; 
 int /*<<< orphan*/  XMAC_CONFIG_LED_POLARITY ; 
 int FUNC0 (struct niu*) ; 
 int FUNC1 (struct niu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct niu*) ; 
 int FUNC7 (struct niu*) ; 

__attribute__((used)) static int FUNC8(struct niu *np)
{
	int err = 0;
	u64 val;

	if ((np->flags & NIU_FLAGS_HOTPLUG_PHY) &&
	    (np->flags & NIU_FLAGS_HOTPLUG_PHY_PRESENT) == 0)
			return err;

	val = FUNC3(XMAC_CONFIG);
	val &= ~XMAC_CONFIG_LED_POLARITY;
	val |= XMAC_CONFIG_FORCE_LED_ON;
	FUNC5(XMAC_CONFIG, val);

	val = FUNC2(MIF_CONFIG);
	val |= MIF_CONFIG_INDIRECT_MODE;
	FUNC4(MIF_CONFIG, val);

	err = FUNC0(np);
	if (err)
		return err;

	err = FUNC6(np);
	if (err)
		return err;

	err = FUNC1(np);
	if (err)
		return err;

	err = FUNC7(np);
	if (err)
		return err;

	return 0;
}