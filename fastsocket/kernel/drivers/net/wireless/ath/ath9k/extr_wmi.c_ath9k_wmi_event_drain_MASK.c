#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct TYPE_2__ {int /*<<< orphan*/  wmi_lock; int /*<<< orphan*/  wmi_event_queue; int /*<<< orphan*/  wmi_event_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ath9k_htc_priv *priv)
{
	unsigned long flags;

	FUNC3(&priv->wmi->wmi_event_tasklet);
	FUNC1(&priv->wmi->wmi_lock, flags);
	FUNC0(&priv->wmi->wmi_event_queue);
	FUNC2(&priv->wmi->wmi_lock, flags);
}