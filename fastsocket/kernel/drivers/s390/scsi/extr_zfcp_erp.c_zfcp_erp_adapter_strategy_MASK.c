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
struct zfcp_erp_action {int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ZFCP_ERP_EXIT ; 
 int ZFCP_ERP_FAILED ; 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int ZFCP_STATUS_ERP_CLOSE_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_erp_action*) ; 
 scalar_t__ FUNC3 (struct zfcp_erp_action*) ; 

__attribute__((used)) static int FUNC4(struct zfcp_erp_action *act)
{
	struct zfcp_adapter *adapter = act->adapter;

	if (FUNC0(&adapter->status) & ZFCP_STATUS_COMMON_OPEN) {
		FUNC2(act);
		if (act->status & ZFCP_STATUS_ERP_CLOSE_ONLY)
			return ZFCP_ERP_EXIT;
	}

	if (FUNC3(act)) {
		FUNC1(8);
		return ZFCP_ERP_FAILED;
	}

	return ZFCP_ERP_SUCCEEDED;
}