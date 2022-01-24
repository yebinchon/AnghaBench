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
struct iwl_tt_mgmt {scalar_t__ state; } ;
struct iwl_priv {int /*<<< orphan*/  status; struct iwl_tt_mgmt thermal_throttle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 scalar_t__ IWL_TI_CT_KILL ; 
 int /*<<< orphan*/  STATUS_CT_KILL ; 
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct iwl_priv *priv = (struct iwl_priv *)data;
	struct iwl_tt_mgmt *tt = &priv->thermal_throttle;

	if (FUNC3(STATUS_EXIT_PENDING, &priv->status))
		return;

	/* temperature timer expired, ready to go into CT_KILL state */
	if (tt->state != IWL_TI_CT_KILL) {
		FUNC0(priv, "entering CT_KILL state when "
				"temperature timer expired\n");
		tt->state = IWL_TI_CT_KILL;
		FUNC2(STATUS_CT_KILL, &priv->status);
		FUNC1(priv, true);
	}
}