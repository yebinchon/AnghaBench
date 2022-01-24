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
struct zfcp_erp_action {int action; int /*<<< orphan*/  unit; int /*<<< orphan*/  port; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
#define  ZFCP_ERP_ACTION_REOPEN_ADAPTER 131 
#define  ZFCP_ERP_ACTION_REOPEN_PORT 130 
#define  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED 129 
#define  ZFCP_ERP_ACTION_REOPEN_UNIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct zfcp_erp_action *act)
{
	switch (act->action) {
	case ZFCP_ERP_ACTION_REOPEN_ADAPTER:
		FUNC0(act->adapter, 0, "ersff_1", NULL);
		break;
	case ZFCP_ERP_ACTION_REOPEN_PORT_FORCED:
		FUNC1(act->port, 0, "ersff_2", NULL);
		break;
	case ZFCP_ERP_ACTION_REOPEN_PORT:
		FUNC2(act->port, 0, "ersff_3", NULL);
		break;
	case ZFCP_ERP_ACTION_REOPEN_UNIT:
		FUNC3(act->unit, 0, "ersff_4", NULL);
		break;
	}
}