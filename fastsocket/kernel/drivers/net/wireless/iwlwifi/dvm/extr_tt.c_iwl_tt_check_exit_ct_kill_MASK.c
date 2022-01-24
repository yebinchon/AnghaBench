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
struct iwl_tt_mgmt {scalar_t__ state; int ct_kill_toggle; int /*<<< orphan*/  ct_kill_exit_tm; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; int /*<<< orphan*/  trans; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1 ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_CLR ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_SET ; 
 int CT_KILL_EXIT_DURATION ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 scalar_t__ IWL_TI_CT_KILL ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct iwl_priv *priv = (struct iwl_priv *)data;
	struct iwl_tt_mgmt *tt = &priv->thermal_throttle;
	unsigned long flags;

	if (FUNC6(STATUS_EXIT_PENDING, &priv->status))
		return;

	if (tt->state == IWL_TI_CT_KILL) {
		if (priv->thermal_throttle.ct_kill_toggle) {
			FUNC4(priv->trans, CSR_UCODE_DRV_GP1_CLR,
				    CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
			priv->thermal_throttle.ct_kill_toggle = false;
		} else {
			FUNC4(priv->trans, CSR_UCODE_DRV_GP1_SET,
				    CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
			priv->thermal_throttle.ct_kill_toggle = true;
		}
		FUNC1(priv->trans, CSR_UCODE_DRV_GP1);
		if (FUNC2(priv->trans, false, &flags))
			FUNC3(priv->trans, &flags);

		/* Reschedule the ct_kill timer to occur in
		 * CT_KILL_EXIT_DURATION seconds to ensure we get a
		 * thermal update */
		FUNC0(priv, "schedule ct_kill exit timer\n");
		FUNC5(&priv->thermal_throttle.ct_kill_exit_tm,
			  jiffies + CT_KILL_EXIT_DURATION * HZ);
	}
}