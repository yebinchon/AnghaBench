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
struct beiscsi_hba {int /*<<< orphan*/  mac_address; } ;
struct be_cmd_get_nic_conf_resp {int /*<<< orphan*/  mac_address; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct be_cmd_get_nic_conf_resp*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct beiscsi_hba*,struct be_cmd_get_nic_conf_resp*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(char *buf, struct beiscsi_hba *phba)
{
	struct be_cmd_get_nic_conf_resp resp;
	int rc;

	if (FUNC3(phba->mac_address))
		return FUNC4(buf, phba->mac_address, ETH_ALEN);

	FUNC1(&resp, 0, sizeof(resp));
	rc = FUNC2(phba, &resp);
	if (rc)
		return rc;

	FUNC0(phba->mac_address, resp.mac_address, ETH_ALEN);
	return FUNC4(buf, phba->mac_address, ETH_ALEN);
}