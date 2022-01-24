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
struct ipw2100_priv {int status; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int EIO ; 
 int IPW_AUX_HOST_RESET_REG_MASTER_DISABLED ; 
 int /*<<< orphan*/  IPW_AUX_HOST_RESET_REG_STOP_MASTER ; 
 int /*<<< orphan*/  IPW_AUX_HOST_RESET_REG_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_REG_RESET_REG ; 
 int /*<<< orphan*/  IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_ASSOCIATING ; 
 int STATUS_ENABLED ; 
 int STATUS_RESET_PENDING ; 
 int STATUS_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ipw2100_priv *priv)
{
	u32 reg;
	int i;

	FUNC0("Power cycling the hardware.\n");

	FUNC1(priv);

	/* Step 1. Stop Master Assert */
	FUNC5(priv->net_dev, IPW_REG_RESET_REG,
		       IPW_AUX_HOST_RESET_REG_STOP_MASTER);

	/* Step 2. Wait for stop Master Assert
	 *         (not more than 50us, otherwise ret error */
	i = 5;
	do {
		FUNC4(IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY);
		FUNC3(priv->net_dev, IPW_REG_RESET_REG, &reg);

		if (reg & IPW_AUX_HOST_RESET_REG_MASTER_DISABLED)
			break;
	} while (--i);

	priv->status &= ~STATUS_RESET_PENDING;

	if (!i) {
		FUNC0
		    ("exit - waited too long for master assert stop\n");
		return -EIO;
	}

	FUNC5(priv->net_dev, IPW_REG_RESET_REG,
		       IPW_AUX_HOST_RESET_REG_SW_RESET);

	/* Reset any fatal_error conditions */
	FUNC2(priv);

	/* At this point, the adapter is now stopped and disabled */
	priv->status &= ~(STATUS_RUNNING | STATUS_ASSOCIATING |
			  STATUS_ASSOCIATED | STATUS_ENABLED);

	return 0;
}