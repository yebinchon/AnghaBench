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
typedef  int /*<<< orphan*/  u32 ;
struct ipw_priv {int config; int status; int /*<<< orphan*/  led_act_off; int /*<<< orphan*/  led_activity_on; } ;

/* Variables and functions */
 int CFG_NO_LED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IPW_EVENT_REG ; 
 int /*<<< orphan*/  LD_TIME_ACT_ON ; 
 int STATUS_LED_ACT_ON ; 
 int STATUS_RF_KILL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	u32 led;

	if (priv->config & CFG_NO_LED)
		return;

	if (priv->status & STATUS_RF_KILL_MASK)
		return;

	if (!(priv->status & STATUS_LED_ACT_ON)) {
		led = FUNC2(priv, IPW_EVENT_REG);
		led |= priv->led_activity_on;

		led = FUNC3(led);

		FUNC0("Reg: 0x%08X\n", led);
		FUNC4(priv, IPW_EVENT_REG, led);

		FUNC0("Activity LED On\n");

		priv->status |= STATUS_LED_ACT_ON;

		FUNC1(&priv->led_act_off);
		FUNC5(&priv->led_act_off, LD_TIME_ACT_ON);
	} else {
		/* Reschedule LED off for full time period */
		FUNC1(&priv->led_act_off);
		FUNC5(&priv->led_act_off, LD_TIME_ACT_ON);
	}
}