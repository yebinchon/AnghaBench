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
struct ipw_priv {int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  adapter_restart; int /*<<< orphan*/  rf_kill; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int STATUS_RF_KILL_MASK ; 
 scalar_t__ FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(void *adapter)
{
	struct ipw_priv *priv = adapter;
	unsigned long flags;

	FUNC4(&priv->lock, flags);

	if (FUNC1(priv)) {
		FUNC0("RF Kill active, rescheduling GPIO check\n");
		FUNC2(&priv->rf_kill, 2 * HZ);
		goto exit_unlock;
	}

	/* RF Kill is now disabled, so bring the device back up */

	if (!(priv->status & STATUS_RF_KILL_MASK)) {
		FUNC0("HW RF Kill no longer active, restarting "
				  "device\n");

		/* we can not do an adapter restart while inside an irq lock */
		FUNC3(&priv->adapter_restart);
	} else
		FUNC0("HW RF Kill deactivated.  SW RF Kill still "
				  "enabled\n");

      exit_unlock:
	FUNC5(&priv->lock, flags);
}