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
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 

__attribute__((used)) static void FUNC3(struct iwl_op_mode *op_mode)
{
	struct iwl_mvm *mvm = FUNC0(op_mode);

	FUNC1(1);
	FUNC2(mvm);
}