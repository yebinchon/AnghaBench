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
struct wimax_dev {int dummy; } ;
struct i2400m_tlv_system_state {int /*<<< orphan*/  state; } ;
struct i2400m {int state; int /*<<< orphan*/  (* bus_reset ) (struct i2400m*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  state_wq; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;
typedef  enum i2400m_system_state { ____Placeholder_i2400m_system_state } i2400m_system_state ;

/* Variables and functions */
 int /*<<< orphan*/  I2400M_RT_WARM ; 
#define  I2400M_SS_CONFIG 143 
#define  I2400M_SS_CONNECTING 142 
#define  I2400M_SS_DATA_PATH_CONNECTED 141 
#define  I2400M_SS_DISCONNECTING 140 
#define  I2400M_SS_IDLE 139 
#define  I2400M_SS_INIT 138 
#define  I2400M_SS_OUT_OF_ZONE 137 
#define  I2400M_SS_PRODUCTION 136 
#define  I2400M_SS_READY 135 
#define  I2400M_SS_RF_OFF 134 
#define  I2400M_SS_RF_SHUTDOWN 133 
#define  I2400M_SS_SCAN 132 
#define  I2400M_SS_SLEEPACTIVE 131 
#define  I2400M_SS_STANDBY 130 
#define  I2400M_SS_UNINITIALIZED 129 
#define  I2400M_SS_WIMAX_CONNECTED 128 
 int /*<<< orphan*/  WIMAX_ST_CONNECTED ; 
 int /*<<< orphan*/  WIMAX_ST_RADIO_OFF ; 
 int /*<<< orphan*/  WIMAX_ST_READY ; 
 int /*<<< orphan*/  WIMAX_ST_SCANNING ; 
 int /*<<< orphan*/  WIMAX_ST_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_system_state const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_system_state const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wimax_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC9(struct i2400m *i2400m,
				    const struct i2400m_tlv_system_state *ss)
{
	struct device *dev = FUNC4(i2400m);
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	enum i2400m_system_state i2400m_state = FUNC5(ss->state);

	FUNC1(3, dev, "(i2400m %p ss %p [%u])\n", i2400m, ss, i2400m_state);

	if (i2400m->state != i2400m_state) {
		i2400m->state = i2400m_state;
		FUNC7(&i2400m->state_wq);
	}
	switch (i2400m_state) {
	case I2400M_SS_UNINITIALIZED:
	case I2400M_SS_INIT:
	case I2400M_SS_CONFIG:
	case I2400M_SS_PRODUCTION:
		FUNC8(wimax_dev, WIMAX_ST_UNINITIALIZED);
		break;

	case I2400M_SS_RF_OFF:
	case I2400M_SS_RF_SHUTDOWN:
		FUNC8(wimax_dev, WIMAX_ST_RADIO_OFF);
		break;

	case I2400M_SS_READY:
	case I2400M_SS_STANDBY:
	case I2400M_SS_SLEEPACTIVE:
		FUNC8(wimax_dev, WIMAX_ST_READY);
		break;

	case I2400M_SS_CONNECTING:
	case I2400M_SS_WIMAX_CONNECTED:
		FUNC8(wimax_dev, WIMAX_ST_READY);
		break;

	case I2400M_SS_SCAN:
	case I2400M_SS_OUT_OF_ZONE:
		FUNC8(wimax_dev, WIMAX_ST_SCANNING);
		break;

	case I2400M_SS_IDLE:
		FUNC2(1, dev, "entering BS-negotiated idle mode\n");
	case I2400M_SS_DISCONNECTING:
	case I2400M_SS_DATA_PATH_CONNECTED:
		FUNC8(wimax_dev, WIMAX_ST_CONNECTED);
		break;

	default:
		/* Huh? just in case, shut it down */
		FUNC3(dev, "HW BUG? unknown state %u: shutting down\n",
			i2400m_state);
		i2400m->bus_reset(i2400m, I2400M_RT_WARM);
		break;
	};
	FUNC0(3, dev, "(i2400m %p ss %p [%u]) = void\n",
		i2400m, ss, i2400m_state);
}