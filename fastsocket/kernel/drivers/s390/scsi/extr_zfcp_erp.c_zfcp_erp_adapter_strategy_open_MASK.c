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
struct zfcp_erp_action {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ZFCP_ERP_FAILED ; 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ; 
 int ZFCP_STATUS_ADAPTER_XCONFIG_OK ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_erp_action*) ; 
 scalar_t__ FUNC3 (struct zfcp_erp_action*) ; 
 scalar_t__ FUNC4 (struct zfcp_erp_action*) ; 

__attribute__((used)) static int FUNC5(struct zfcp_erp_action *act)
{
	struct zfcp_adapter *adapter = act->adapter;

	if (FUNC4(act)) {
		FUNC0(ZFCP_STATUS_ADAPTER_XCONFIG_OK |
				  ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED,
				  &adapter->status);
		return ZFCP_ERP_FAILED;
	}

	if (FUNC3(act)) {
		FUNC2(act);
		return ZFCP_ERP_FAILED;
	}

	FUNC1(ZFCP_STATUS_COMMON_OPEN, &adapter->status);

	return ZFCP_ERP_SUCCEEDED;
}