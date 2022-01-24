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
struct iwl_mvm {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_LED_REG ; 
 int /*<<< orphan*/  CSR_LED_REG_TURN_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct iwl_mvm *mvm)
{
	FUNC0(mvm->trans, CSR_LED_REG, CSR_LED_REG_TURN_OFF);
}