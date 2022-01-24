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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_ILOS ; 
 int E1000_CTRL_SLU ; 
 int E1000_SCTL_ENABLE_SERDES_LOOPBACK ; 
 int E1000_STATUS_LU ; 
 int /*<<< orphan*/  SCTL ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TXCW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl = FUNC1(CTRL);
	int link;

	/* special requirements for 82571/82572 fiber adapters */

	/* jump through hoops to make sure link is up because serdes
	 * link is hardwired up
	 */
	ctrl |= E1000_CTRL_SLU;
	FUNC2(CTRL, ctrl);

	/* disable autoneg */
	ctrl = FUNC1(TXCW);
	ctrl &= ~(1 << 31);
	FUNC2(TXCW, ctrl);

	link = (FUNC1(STATUS) & E1000_STATUS_LU);

	if (!link) {
		/* set invert loss of signal */
		ctrl = FUNC1(CTRL);
		ctrl |= E1000_CTRL_ILOS;
		FUNC2(CTRL, ctrl);
	}

	/* special write to serdes control register to enable SerDes analog
	 * loopback
	 */
	FUNC2(SCTL, E1000_SCTL_ENABLE_SERDES_LOOPBACK);
	FUNC0();
	FUNC3(10000, 20000);

	return 0;
}