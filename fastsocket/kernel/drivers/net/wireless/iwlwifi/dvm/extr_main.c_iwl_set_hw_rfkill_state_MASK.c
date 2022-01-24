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
struct iwl_priv {TYPE_1__* hw; int /*<<< orphan*/  status; } ;
struct iwl_op_mode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 struct iwl_priv* FUNC0 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  STATUS_RF_KILL_HW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct iwl_op_mode *op_mode, bool state)
{
	struct iwl_priv *priv = FUNC0(op_mode);

	if (state)
		FUNC2(STATUS_RF_KILL_HW, &priv->status);
	else
		FUNC1(STATUS_RF_KILL_HW, &priv->status);

	FUNC3(priv->hw->wiphy, state);
}