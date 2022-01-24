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
typedef  int /*<<< orphan*/  u32 ;
struct pm8001_hba_info {int dummy; } ;
struct kek_mgmt_resp {int /*<<< orphan*/  err_qlfr; int /*<<< orphan*/  kidx_new_curr_ksop; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pm8001_hba_info *pm8001_ha,
			void *piomb)
{
	struct kek_mgmt_resp *pPayload = (struct kek_mgmt_resp *)(piomb + 4);

	u32 status = FUNC1(pPayload->status);
	u32 kidx_new_curr_ksop = FUNC1(pPayload->kidx_new_curr_ksop);
	u32 err_qlfr = FUNC1(pPayload->err_qlfr);

	FUNC0(pm8001_ha, FUNC2(
		"KEK MGMT RESP. Status 0x%x idx_ksop 0x%x err_qlfr 0x%x\n",
		status, kidx_new_curr_ksop, err_qlfr));

	return 0;
}