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
struct jme_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int JME_PHY_TIMEOUT ; 
 int /*<<< orphan*/  JME_SMI ; 
 int MII_BMSR ; 
 int SMI_DATA_MASK ; 
 int SMI_DATA_SHIFT ; 
 int SMI_OP_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 struct jme_adapter* FUNC3 (struct net_device*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int
FUNC8(struct net_device *netdev, int phy, int reg)
{
	struct jme_adapter *jme = FUNC3(netdev);
	int i, val, again = (reg == MII_BMSR) ? 1 : 0;

read_again:
	FUNC2(jme, JME_SMI, SMI_OP_REQ |
				FUNC4(phy) |
				FUNC5(reg));

	FUNC7();
	for (i = JME_PHY_TIMEOUT * 50 ; i > 0 ; --i) {
		FUNC6(20);
		val = FUNC1(jme, JME_SMI);
		if ((val & SMI_OP_REQ) == 0)
			break;
	}

	if (i == 0) {
		FUNC0(jme->pdev, "phy(%d) read timeout : %d\n", phy, reg);
		return 0;
	}

	if (again--)
		goto read_again;

	return (val & SMI_DATA_MASK) >> SMI_DATA_SHIFT;
}