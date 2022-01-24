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
struct ath9k_htc_priv {int ps_usecount; int /*<<< orphan*/  htc_pm_lock; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath9k_htc_priv *priv)
{
	FUNC1(&priv->htc_pm_lock);
	if (++priv->ps_usecount != 1)
		goto unlock;
	FUNC0(priv->ah, ATH9K_PM_AWAKE);

unlock:
	FUNC2(&priv->htc_pm_lock);
}