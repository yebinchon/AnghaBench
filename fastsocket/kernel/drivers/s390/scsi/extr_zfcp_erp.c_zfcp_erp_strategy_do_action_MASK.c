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
struct zfcp_erp_action {int action; } ;

/* Variables and functions */
#define  ZFCP_ERP_ACTION_REOPEN_ADAPTER 131 
#define  ZFCP_ERP_ACTION_REOPEN_PORT 130 
#define  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED 129 
#define  ZFCP_ERP_ACTION_REOPEN_UNIT 128 
 int ZFCP_ERP_FAILED ; 
 int FUNC0 (struct zfcp_erp_action*) ; 
 int FUNC1 (struct zfcp_erp_action*) ; 
 int FUNC2 (struct zfcp_erp_action*) ; 
 int FUNC3 (struct zfcp_erp_action*) ; 

__attribute__((used)) static int FUNC4(struct zfcp_erp_action *erp_action)
{
	switch (erp_action->action) {
	case ZFCP_ERP_ACTION_REOPEN_ADAPTER:
		return FUNC0(erp_action);
	case ZFCP_ERP_ACTION_REOPEN_PORT_FORCED:
		return FUNC1(erp_action);
	case ZFCP_ERP_ACTION_REOPEN_PORT:
		return FUNC2(erp_action);
	case ZFCP_ERP_ACTION_REOPEN_UNIT:
		return FUNC3(erp_action);
	}
	return ZFCP_ERP_FAILED;
}