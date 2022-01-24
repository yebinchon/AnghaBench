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
struct zfcp_erp_action {int action; struct zfcp_unit* unit; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  service_level; } ;

/* Variables and functions */
#define  ZFCP_ERP_ACTION_REOPEN_ADAPTER 131 
#define  ZFCP_ERP_ACTION_REOPEN_PORT 130 
#define  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED 129 
#define  ZFCP_ERP_ACTION_REOPEN_UNIT 128 
 int ZFCP_ERP_SUCCEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_unit*) ; 

__attribute__((used)) static void FUNC7(struct zfcp_erp_action *act, int result)
{
	struct zfcp_adapter *adapter = act->adapter;
	struct zfcp_port *port = act->port;
	struct zfcp_unit *unit = act->unit;

	switch (act->action) {
	case ZFCP_ERP_ACTION_REOPEN_UNIT:
		FUNC6(unit);
		break;

	case ZFCP_ERP_ACTION_REOPEN_PORT:
		if (result == ZFCP_ERP_SUCCEEDED)
			FUNC5(port);
		/* fall through */
	case ZFCP_ERP_ACTION_REOPEN_PORT_FORCED:
		FUNC4(port);
		break;

	case ZFCP_ERP_ACTION_REOPEN_ADAPTER:
		if (result == ZFCP_ERP_SUCCEEDED) {
			FUNC0(&adapter->service_level);
			FUNC3(adapter);
		} else
			FUNC1(&adapter->service_level);
		FUNC2(adapter);
		break;
	}
}