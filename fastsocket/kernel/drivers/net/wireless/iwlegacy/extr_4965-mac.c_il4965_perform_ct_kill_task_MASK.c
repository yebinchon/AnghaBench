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
struct il_priv {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  hw; scalar_t__ mac80211_registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1 ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC9(struct il_priv *il)
{
	unsigned long flags;

	FUNC0("Stop all queues\n");

	if (il->mac80211_registered)
		FUNC5(il->hw);

	FUNC4(il, CSR_UCODE_DRV_GP1_SET,
	       CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
	FUNC2(il, CSR_UCODE_DRV_GP1);

	FUNC7(&il->reg_lock, flags);
	if (FUNC6(FUNC1(il)))
		FUNC3(il);
	FUNC8(&il->reg_lock, flags);
}