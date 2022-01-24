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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_INIT_DONE ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_SET ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iwl_trans *trans)
{
	/* let the ucode operate on its own */
	FUNC5(trans, CSR_UCODE_DRV_GP1_SET,
		    CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE);

	FUNC1(trans);
	FUNC2(trans);

	FUNC0(trans, CSR_GP_CNTRL,
		      CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
	FUNC0(trans, CSR_GP_CNTRL,
		      CSR_GP_CNTRL_REG_FLAG_INIT_DONE);

	/*
	 * reset TX queues -- some of their registers reset during S3
	 * so if we don't reset everything here the D3 image would try
	 * to execute some invalid memory upon resume
	 */
	FUNC4(trans);

	FUNC3(trans, true);
}