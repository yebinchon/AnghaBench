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
struct zfcp_unit {TYPE_1__* port; int /*<<< orphan*/  status; } ;
struct zfcp_adapter {int dummy; } ;
struct TYPE_2__ {struct zfcp_adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_UNIT ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct zfcp_adapter*,TYPE_1__*,struct zfcp_unit*,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_unit*,int) ; 

__attribute__((used)) static void FUNC3(struct zfcp_unit *unit, int clear, char *id,
				  void *ref)
{
	struct zfcp_adapter *adapter = unit->port->adapter;

	FUNC2(unit, clear);

	if (FUNC0(&unit->status) & ZFCP_STATUS_COMMON_ERP_FAILED)
		return;

	FUNC1(ZFCP_ERP_ACTION_REOPEN_UNIT,
				adapter, unit->port, unit, id, ref);
}