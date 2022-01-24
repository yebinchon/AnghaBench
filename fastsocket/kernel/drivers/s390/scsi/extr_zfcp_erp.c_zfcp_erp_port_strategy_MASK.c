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
struct zfcp_port {int /*<<< orphan*/  status; } ;
struct zfcp_erp_action {int step; int status; struct zfcp_port* port; } ;

/* Variables and functions */
 int ZFCP_ERP_EXIT ; 
 int ZFCP_ERP_FAILED ; 
#define  ZFCP_ERP_STEP_PORT_CLOSING 129 
#define  ZFCP_ERP_STEP_UNINITIALIZED 128 
 int ZFCP_STATUS_COMMON_NOESC ; 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int ZFCP_STATUS_ERP_CLOSE_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_port*) ; 
 int FUNC2 (struct zfcp_erp_action*) ; 
 int FUNC3 (struct zfcp_erp_action*) ; 

__attribute__((used)) static int FUNC4(struct zfcp_erp_action *erp_action)
{
	struct zfcp_port *port = erp_action->port;
	int p_status = FUNC0(&port->status);

	if ((p_status & ZFCP_STATUS_COMMON_NOESC) &&
	    !(p_status & ZFCP_STATUS_COMMON_OPEN))
		goto close_init_done;

	switch (erp_action->step) {
	case ZFCP_ERP_STEP_UNINITIALIZED:
		FUNC1(port);
		if (p_status & ZFCP_STATUS_COMMON_OPEN)
			return FUNC2(erp_action);
		break;

	case ZFCP_ERP_STEP_PORT_CLOSING:
		if (p_status & ZFCP_STATUS_COMMON_OPEN)
			return ZFCP_ERP_FAILED;
		break;
	}

close_init_done:
	if (erp_action->status & ZFCP_STATUS_ERP_CLOSE_ONLY)
		return ZFCP_ERP_EXIT;

	return FUNC3(erp_action);
}