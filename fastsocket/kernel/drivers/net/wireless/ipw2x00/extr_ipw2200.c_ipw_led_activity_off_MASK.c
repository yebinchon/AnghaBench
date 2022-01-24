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
struct ipw_priv {int config; int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  led_activity_off; } ;

/* Variables and functions */
 int CFG_NO_LED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IPW_EVENT_REG ; 
 int STATUS_LED_ACT_ON ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	unsigned long flags;
	u32 led;

	if (priv->config & CFG_NO_LED)
		return;

	FUNC4(&priv->lock, flags);

	if (priv->status & STATUS_LED_ACT_ON) {
		led = FUNC1(priv, IPW_EVENT_REG);
		led &= priv->led_activity_off;

		led = FUNC2(led);

		FUNC0("Reg: 0x%08X\n", led);
		FUNC3(priv, IPW_EVENT_REG, led);

		FUNC0("Activity LED Off\n");

		priv->status &= ~STATUS_LED_ACT_ON;
	}

	FUNC5(&priv->lock, flags);
}