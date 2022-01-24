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
struct ipw_priv {int status; int /*<<< orphan*/  scan_check; int /*<<< orphan*/  adapter_restart; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPW_SCAN_CHECK_WATCHDOG ; 
 int STATUS_SCANNING ; 
 int STATUS_SCAN_ABORTING ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct ipw_priv *priv = data;

	if (priv->status & STATUS_SCAN_ABORTING) {
		FUNC0("Scan completion watchdog resetting "
			       "adapter after (%dms).\n",
			       FUNC2(IPW_SCAN_CHECK_WATCHDOG));
		FUNC4(&priv->adapter_restart);
	} else if (priv->status & STATUS_SCANNING) {
		FUNC0("Scan completion watchdog aborting scan "
			       "after (%dms).\n",
			       FUNC2(IPW_SCAN_CHECK_WATCHDOG));
		FUNC1(priv);
		FUNC3(&priv->scan_check, HZ);
	}
}