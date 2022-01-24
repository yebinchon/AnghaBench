#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zfcp_erp_action {int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  erp_lock; int /*<<< orphan*/  erp_low_mem_count; int /*<<< orphan*/  erp_total_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
#define  ZFCP_ERP_CONTINUES 129 
 int ZFCP_ERP_DISMISSED ; 
 int ZFCP_ERP_EXIT ; 
 int ZFCP_ERP_FAILED ; 
#define  ZFCP_ERP_NOMEM 128 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_ERP_DISMISSED ; 
 int ZFCP_STATUS_ERP_LOWMEM ; 
 int ZFCP_STATUS_ERP_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_erp_action*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_erp_action*) ; 
 int FUNC9 (struct zfcp_erp_action*,int) ; 
 int FUNC10 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC13 (struct zfcp_erp_action*) ; 
 int FUNC14 (struct zfcp_erp_action*,int) ; 

__attribute__((used)) static int FUNC15(struct zfcp_erp_action *erp_action)
{
	int retval;
	struct zfcp_adapter *adapter = erp_action->adapter;
	unsigned long flags;

	FUNC1(&zfcp_data.config_lock, flags);
	FUNC3(&adapter->erp_lock);

	FUNC8(erp_action);

	if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED) {
		FUNC6(erp_action);
		retval = ZFCP_ERP_DISMISSED;
		goto unlock;
	}

	if (erp_action->status & ZFCP_STATUS_ERP_TIMEDOUT) {
		retval = ZFCP_ERP_FAILED;
		goto check_target;
	}

	FUNC7(erp_action);

	/* no lock to allow for blocking operations */
	FUNC4(&adapter->erp_lock);
	FUNC2(&zfcp_data.config_lock, flags);
	retval = FUNC10(erp_action);
	FUNC1(&zfcp_data.config_lock, flags);
	FUNC3(&adapter->erp_lock);

	if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED)
		retval = ZFCP_ERP_CONTINUES;

	switch (retval) {
	case ZFCP_ERP_NOMEM:
		if (!(erp_action->status & ZFCP_STATUS_ERP_LOWMEM)) {
			++adapter->erp_low_mem_count;
			erp_action->status |= ZFCP_STATUS_ERP_LOWMEM;
		}
		if (adapter->erp_total_count == adapter->erp_low_mem_count)
			FUNC0(adapter, 0, "erstgy1", NULL);
		else {
			FUNC13(erp_action);
			retval = ZFCP_ERP_CONTINUES;
		}
		goto unlock;

	case ZFCP_ERP_CONTINUES:
		if (erp_action->status & ZFCP_STATUS_ERP_LOWMEM) {
			--adapter->erp_low_mem_count;
			erp_action->status &= ~ZFCP_STATUS_ERP_LOWMEM;
		}
		goto unlock;
	}

check_target:
	retval = FUNC9(erp_action, retval);
	FUNC6(erp_action);
	retval = FUNC14(erp_action, retval);
	if (retval == ZFCP_ERP_EXIT)
		goto unlock;
	if (retval == ZFCP_ERP_SUCCEEDED)
		FUNC12(erp_action);
	if (retval == ZFCP_ERP_FAILED)
		FUNC11(erp_action);

 unlock:
	FUNC4(&adapter->erp_lock);
	FUNC2(&zfcp_data.config_lock, flags);

	if (retval != ZFCP_ERP_CONTINUES)
		FUNC5(erp_action, retval);

	return retval;
}