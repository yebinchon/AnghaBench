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
struct ipw_priv {int config; scalar_t__ nic_type; int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  led_link_on; int /*<<< orphan*/  led_association_off; } ;

/* Variables and functions */
 int CFG_NO_LED ; 
 scalar_t__ EEPROM_NIC_TYPE_1 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IPW_EVENT_REG ; 
 int /*<<< orphan*/  LD_TIME_LINK_OFF ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_LED_LINK_ON ; 
 int STATUS_RF_KILL_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ipw_priv *priv)
{
	unsigned long flags;
	u32 led;

	/* If configured not to use LEDs, or nic type is 1,
	 * then we don't goggle the LINK led. */
	if (priv->config & CFG_NO_LED || priv->nic_type == EEPROM_NIC_TYPE_1)
		return;

	FUNC5(&priv->lock, flags);

	if (priv->status & STATUS_LED_LINK_ON) {
		led = FUNC1(priv, IPW_EVENT_REG);
		led &= priv->led_association_off;
		led = FUNC2(led);

		FUNC0("Reg: 0x%08X\n", led);
		FUNC3(priv, IPW_EVENT_REG, led);

		FUNC0("Link LED Off\n");

		priv->status &= ~STATUS_LED_LINK_ON;

		/* If we aren't associated and the radio is on, schedule
		 * turning the LED on (blink while unassociated) */
		if (!(priv->status & STATUS_RF_KILL_MASK) &&
		    !(priv->status & STATUS_ASSOCIATED))
			FUNC4(&priv->led_link_on,
					      LD_TIME_LINK_OFF);

	}

	FUNC6(&priv->lock, flags);
}