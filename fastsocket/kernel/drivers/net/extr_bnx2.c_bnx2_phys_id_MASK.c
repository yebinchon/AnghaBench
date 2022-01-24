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
struct net_device {int dummy; } ;
struct bnx2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_EMAC_LED ; 
 int BNX2_EMAC_LED_1000MB_OVERRIDE ; 
 int BNX2_EMAC_LED_100MB_OVERRIDE ; 
 int BNX2_EMAC_LED_10MB_OVERRIDE ; 
 int BNX2_EMAC_LED_OVERRIDE ; 
 int BNX2_EMAC_LED_TRAFFIC ; 
 int BNX2_EMAC_LED_TRAFFIC_OVERRIDE ; 
 int /*<<< orphan*/  BNX2_MISC_CFG ; 
 int BNX2_MISC_CFG_LEDMODE_MAC ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct bnx2* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev, u32 data)
{
	struct bnx2 *bp = FUNC4(dev);
	int i;
	u32 save;

	FUNC2(bp, PCI_D0);

	if (data == 0)
		data = 2;

	save = FUNC0(bp, BNX2_MISC_CFG);
	FUNC1(bp, BNX2_MISC_CFG, BNX2_MISC_CFG_LEDMODE_MAC);

	for (i = 0; i < (data * 2); i++) {
		if ((i % 2) == 0) {
			FUNC1(bp, BNX2_EMAC_LED, BNX2_EMAC_LED_OVERRIDE);
		}
		else {
			FUNC1(bp, BNX2_EMAC_LED, BNX2_EMAC_LED_OVERRIDE |
				BNX2_EMAC_LED_1000MB_OVERRIDE |
				BNX2_EMAC_LED_100MB_OVERRIDE |
				BNX2_EMAC_LED_10MB_OVERRIDE |
				BNX2_EMAC_LED_TRAFFIC_OVERRIDE |
				BNX2_EMAC_LED_TRAFFIC);
		}
		FUNC3(500);
		if (FUNC6(current))
			break;
	}
	FUNC1(bp, BNX2_EMAC_LED, 0);
	FUNC1(bp, BNX2_MISC_CFG, save);

	if (!FUNC5(dev))
		FUNC2(bp, PCI_D3hot);

	return 0;
}