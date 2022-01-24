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
struct zfcp_erp_action {int action; int /*<<< orphan*/  status; struct zfcp_unit* unit; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_unit {int /*<<< orphan*/  status; struct zfcp_erp_action erp_action; } ;
struct zfcp_port {int /*<<< orphan*/  status; struct zfcp_erp_action erp_action; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; struct zfcp_erp_action erp_action; } ;

/* Variables and functions */
#define  ZFCP_ERP_ACTION_REOPEN_ADAPTER 131 
#define  ZFCP_ERP_ACTION_REOPEN_PORT 130 
#define  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED 129 
#define  ZFCP_ERP_ACTION_REOPEN_UNIT 128 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_INUSE ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  ZFCP_STATUS_ERP_CLOSE_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_erp_action*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_unit*) ; 

__attribute__((used)) static struct zfcp_erp_action *FUNC8(int need,
						  struct zfcp_adapter *adapter,
						  struct zfcp_port *port,
						  struct zfcp_unit *unit)
{
	struct zfcp_erp_action *erp_action;
	u32 status = 0;

	switch (need) {
	case ZFCP_ERP_ACTION_REOPEN_UNIT:
		FUNC7(unit);
		FUNC1(ZFCP_STATUS_COMMON_ERP_INUSE, &unit->status);
		erp_action = &unit->erp_action;
		if (!(FUNC0(&unit->status) & ZFCP_STATUS_COMMON_RUNNING))
			status = ZFCP_STATUS_ERP_CLOSE_ONLY;
		break;

	case ZFCP_ERP_ACTION_REOPEN_PORT:
	case ZFCP_ERP_ACTION_REOPEN_PORT_FORCED:
		FUNC6(port);
		FUNC5(port);
		FUNC1(ZFCP_STATUS_COMMON_ERP_INUSE, &port->status);
		erp_action = &port->erp_action;
		if (!(FUNC0(&port->status) & ZFCP_STATUS_COMMON_RUNNING))
			status = ZFCP_STATUS_ERP_CLOSE_ONLY;
		break;

	case ZFCP_ERP_ACTION_REOPEN_ADAPTER:
		FUNC3(adapter);
		FUNC4(adapter);
		FUNC1(ZFCP_STATUS_COMMON_ERP_INUSE, &adapter->status);
		erp_action = &adapter->erp_action;
		if (!(FUNC0(&adapter->status) &
		      ZFCP_STATUS_COMMON_RUNNING))
			status = ZFCP_STATUS_ERP_CLOSE_ONLY;
		break;

	default:
		return NULL;
	}

	FUNC2(erp_action, 0, sizeof(struct zfcp_erp_action));
	erp_action->adapter = adapter;
	erp_action->port = port;
	erp_action->unit = unit;
	erp_action->action = need;
	erp_action->status = status;

	return erp_action;
}