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
struct i2400m_tlv_rf_switches_status {int /*<<< orphan*/  hw_rf_switch; int /*<<< orphan*/  sw_rf_switch; } ;
struct i2400m {int /*<<< orphan*/  wimax_dev; } ;
struct device {int dummy; } ;
typedef  enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
typedef  enum i2400m_rf_switch_status { ____Placeholder_i2400m_rf_switch_status } i2400m_rf_switch_status ;

/* Variables and functions */
#define  I2400M_RF_SWITCH_OFF 129 
#define  I2400M_RF_SWITCH_ON 128 
 int /*<<< orphan*/  WIMAX_RF_OFF ; 
 int /*<<< orphan*/  WIMAX_RF_ON ; 
 int WIMAX_ST_RADIO_OFF ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_rf_switches_status const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_rf_switches_status const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(
	struct i2400m *i2400m,
	const struct i2400m_tlv_rf_switches_status *rfss)
{
	struct device *dev = FUNC4(i2400m);
	enum i2400m_rf_switch_status hw, sw;
	enum wimax_st wimax_state;

	sw = FUNC5(rfss->sw_rf_switch);
	hw = FUNC5(rfss->hw_rf_switch);

	FUNC1(3, dev, "(i2400m %p rfss %p [hw %u sw %u])\n",
		  i2400m, rfss, hw, sw);
	/* We only process rw switch evens when the device has been
	 * fully initialized */
	wimax_state = FUNC8(&i2400m->wimax_dev);
	if (wimax_state < WIMAX_ST_RADIO_OFF) {
		FUNC2(3, dev, "ignoring RF switches report, state %u\n",
			 wimax_state);
		goto out;
	}
	switch (sw) {
	case I2400M_RF_SWITCH_ON:	/* RF Kill disabled (radio on) */
		FUNC7(&i2400m->wimax_dev, WIMAX_RF_ON);
		break;
	case I2400M_RF_SWITCH_OFF:	/* RF Kill enabled (radio off) */
		FUNC7(&i2400m->wimax_dev, WIMAX_RF_OFF);
		break;
	default:
		FUNC3(dev, "HW BUG? Unknown RF SW state 0x%x\n", sw);
	}

	switch (hw) {
	case I2400M_RF_SWITCH_ON:	/* RF Kill disabled (radio on) */
		FUNC6(&i2400m->wimax_dev, WIMAX_RF_ON);
		break;
	case I2400M_RF_SWITCH_OFF:	/* RF Kill enabled (radio off) */
		FUNC6(&i2400m->wimax_dev, WIMAX_RF_OFF);
		break;
	default:
		FUNC3(dev, "HW BUG? Unknown RF HW state 0x%x\n", hw);
	}
out:
	FUNC0(3, dev, "(i2400m %p rfss %p [hw %u sw %u]) = void\n",
		i2400m, rfss, hw, sw);
}