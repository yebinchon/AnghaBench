#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_priv {unsigned long blink_on; unsigned long blink_off; TYPE_2__* cfg; int /*<<< orphan*/  status; } ;
struct iwl_led_cmd {void* off; void* on; int /*<<< orphan*/  interval; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int /*<<< orphan*/  led_compensation; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWL_DEF_LED_INTRVL ; 
 int /*<<< orphan*/  IWL_LED_LINK ; 
 unsigned long IWL_LED_SOLID ; 
 int /*<<< orphan*/  STATUS_READY ; 
 void* FUNC1 (struct iwl_priv*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_priv*,struct iwl_led_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iwl_priv *priv,
		       unsigned long on,
		       unsigned long off)
{
	struct iwl_led_cmd led_cmd = {
		.id = IWL_LED_LINK,
		.interval = IWL_DEF_LED_INTRVL
	};
	int ret;

	if (!FUNC3(STATUS_READY, &priv->status))
		return -EBUSY;

	if (priv->blink_on == on && priv->blink_off == off)
		return 0;

	if (off == 0) {
		/* led is SOLID_ON */
		on = IWL_LED_SOLID;
	}

	FUNC0(priv, "Led blink time compensation=%u\n",
			priv->cfg->base_params->led_compensation);
	led_cmd.on = FUNC1(priv, on,
				priv->cfg->base_params->led_compensation);
	led_cmd.off = FUNC1(priv, off,
				priv->cfg->base_params->led_compensation);

	ret = FUNC2(priv, &led_cmd);
	if (!ret) {
		priv->blink_on = on;
		priv->blink_off = off;
	}
	return ret;
}