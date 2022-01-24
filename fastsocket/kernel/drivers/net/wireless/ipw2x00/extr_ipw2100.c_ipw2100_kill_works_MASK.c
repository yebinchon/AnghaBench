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
struct ipw2100_priv {int stop_rf_kill; int stop_hang_check; int /*<<< orphan*/  scan_event_later; int /*<<< orphan*/  scan_event_now; int /*<<< orphan*/  rf_kill; int /*<<< orphan*/  hang_check; int /*<<< orphan*/  wx_event_work; int /*<<< orphan*/  security_work; int /*<<< orphan*/  reset_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ipw2100_priv *priv)
{
	priv->stop_rf_kill = 1;
	priv->stop_hang_check = 1;
	FUNC0(&priv->reset_work);
	FUNC0(&priv->security_work);
	FUNC0(&priv->wx_event_work);
	FUNC0(&priv->hang_check);
	FUNC0(&priv->rf_kill);
	FUNC1(&priv->scan_event_now);
	FUNC0(&priv->scan_event_later);
}