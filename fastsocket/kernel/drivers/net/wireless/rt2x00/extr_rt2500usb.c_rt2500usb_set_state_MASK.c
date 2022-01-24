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
typedef  scalar_t__ u16 ;
struct rt2x00_dev {int dummy; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MAC_CSR17 ; 
 int /*<<< orphan*/  MAC_CSR17_BBP_CURR_STATE ; 
 int /*<<< orphan*/  MAC_CSR17_BBP_DESIRE_STATE ; 
 int /*<<< orphan*/  MAC_CSR17_PUT_TO_SLEEP ; 
 int /*<<< orphan*/  MAC_CSR17_RF_CURR_STATE ; 
 int /*<<< orphan*/  MAC_CSR17_RF_DESIRE_STATE ; 
 int /*<<< orphan*/  MAC_CSR17_SET_STATE ; 
 unsigned int REGISTER_BUSY_COUNT ; 
 int STATE_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 char FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev,
			       enum dev_state state)
{
	u16 reg;
	u16 reg2;
	unsigned int i;
	char put_to_sleep;
	char bbp_state;
	char rf_state;

	put_to_sleep = (state != STATE_AWAKE);

	reg = 0;
	FUNC4(&reg, MAC_CSR17_BBP_DESIRE_STATE, state);
	FUNC4(&reg, MAC_CSR17_RF_DESIRE_STATE, state);
	FUNC4(&reg, MAC_CSR17_PUT_TO_SLEEP, put_to_sleep);
	FUNC2(rt2x00dev, MAC_CSR17, reg);
	FUNC4(&reg, MAC_CSR17_SET_STATE, 1);
	FUNC2(rt2x00dev, MAC_CSR17, reg);

	/*
	 * Device is not guaranteed to be in the requested state yet.
	 * We must wait until the register indicates that the
	 * device has entered the correct state.
	 */
	for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
		FUNC1(rt2x00dev, MAC_CSR17, &reg2);
		bbp_state = FUNC3(reg2, MAC_CSR17_BBP_CURR_STATE);
		rf_state = FUNC3(reg2, MAC_CSR17_RF_CURR_STATE);
		if (bbp_state == state && rf_state == state)
			return 0;
		FUNC2(rt2x00dev, MAC_CSR17, reg);
		FUNC0(30);
	}

	return -EBUSY;
}