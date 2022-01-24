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
struct ath_hw_private_ops {int /*<<< orphan*/  init_mode_gain_regs; } ;
struct ath_hw_ops {int /*<<< orphan*/  config_pci_powersave; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  ar9003_hw_configpcipowersave ; 
 int /*<<< orphan*/  ar9003_hw_init_mode_gain_regs ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 struct ath_hw_ops* FUNC4 (struct ath_hw*) ; 
 struct ath_hw_private_ops* FUNC5 (struct ath_hw*) ; 

void FUNC6(struct ath_hw *ah)
{
	struct ath_hw_private_ops *priv_ops = FUNC5(ah);
	struct ath_hw_ops *ops = FUNC4(ah);

	FUNC3(ah);
	priv_ops->init_mode_gain_regs = ar9003_hw_init_mode_gain_regs;

	ops->config_pci_powersave = ar9003_hw_configpcipowersave;

	FUNC2(ah);
	FUNC0(ah);
	FUNC1(ah);
}