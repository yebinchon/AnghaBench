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
struct iwl_trans {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_PS_CTRL_MSK_PWR_SRC ; 
 int /*<<< orphan*/  APMG_PS_CTRL_REG ; 
 int /*<<< orphan*/  APMG_PS_CTRL_VAL_PWR_SRC_VAUX ; 
 int /*<<< orphan*/  APMG_PS_CTRL_VAL_PWR_SRC_VMAIN ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iwl_trans *trans, bool vaux)
{
	if (vaux && FUNC1(FUNC2(trans->dev), PCI_D3cold))
		FUNC0(trans, APMG_PS_CTRL_REG,
				       APMG_PS_CTRL_VAL_PWR_SRC_VAUX,
				       ~APMG_PS_CTRL_MSK_PWR_SRC);
	else
		FUNC0(trans, APMG_PS_CTRL_REG,
				       APMG_PS_CTRL_VAL_PWR_SRC_VMAIN,
				       ~APMG_PS_CTRL_MSK_PWR_SRC);
}