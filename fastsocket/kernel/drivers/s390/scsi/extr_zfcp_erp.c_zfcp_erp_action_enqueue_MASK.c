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
struct zfcp_unit {int dummy; } ;
struct zfcp_port {int dummy; } ;
struct zfcp_erp_action {int /*<<< orphan*/  list; } ;
struct zfcp_adapter {int /*<<< orphan*/  dbf; int /*<<< orphan*/  erp_ready_wq; int /*<<< orphan*/  erp_ready_head; int /*<<< orphan*/  erp_total_count; int /*<<< orphan*/  status; int /*<<< orphan*/  erp_thread; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ZFCP_STATUS_ADAPTER_ERP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,int,int,struct zfcp_erp_action*,struct zfcp_adapter*,struct zfcp_port*,struct zfcp_unit*) ; 
 int FUNC5 (int,struct zfcp_adapter*,struct zfcp_port*,struct zfcp_unit*) ; 
 struct zfcp_erp_action* FUNC6 (int,struct zfcp_adapter*,struct zfcp_port*,struct zfcp_unit*) ; 

__attribute__((used)) static int FUNC7(int want, struct zfcp_adapter *adapter,
				   struct zfcp_port *port,
				   struct zfcp_unit *unit, char *id, void *ref)
{
	int retval = 1, need;
	struct zfcp_erp_action *act = NULL;

	if (!adapter->erp_thread)
		return -EIO;

	need = FUNC5(want, adapter, port, unit);
	if (!need)
		goto out;

	FUNC0(ZFCP_STATUS_ADAPTER_ERP_PENDING, &adapter->status);
	act = FUNC6(need, adapter, port, unit);
	if (!act)
		goto out;
	++adapter->erp_total_count;
	FUNC1(&act->list, &adapter->erp_ready_head);
	FUNC2(&adapter->erp_ready_wq);
	FUNC3("eracte1", adapter->dbf);
	retval = 0;
 out:
	FUNC4(id, ref, want, need, act, adapter, port, unit);
	return retval;
}