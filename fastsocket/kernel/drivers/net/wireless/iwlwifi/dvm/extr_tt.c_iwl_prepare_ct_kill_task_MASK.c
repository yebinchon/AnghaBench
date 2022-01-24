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
struct TYPE_2__ {int /*<<< orphan*/  ct_kill_waiting_tm; } ;
struct iwl_priv {TYPE_1__ thermal_throttle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  CT_KILL_WAITING_DURATION ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iwl_priv *priv)
{
	FUNC0(priv, "Prepare to enter IWL_TI_CT_KILL\n");
	/* make request to retrieve statistics information */
	FUNC1(priv, CMD_SYNC, false);
	/* Reschedule the ct_kill wait timer */
	FUNC2(&priv->thermal_throttle.ct_kill_waiting_tm,
		 jiffies + FUNC3(CT_KILL_WAITING_DURATION));
}