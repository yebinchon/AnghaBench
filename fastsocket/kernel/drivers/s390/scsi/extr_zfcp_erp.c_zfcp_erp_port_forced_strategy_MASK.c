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
struct zfcp_erp_action {int step; struct zfcp_port* port; } ;

/* Variables and functions */
 int ZFCP_ERP_FAILED ; 
#define  ZFCP_ERP_STEP_PHYS_PORT_CLOSING 129 
#define  ZFCP_ERP_STEP_UNINITIALIZED 128 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int ZFCP_STATUS_PORT_PHYS_OPEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_port*) ; 

__attribute__((used)) static int FUNC3(struct zfcp_erp_action *erp_action)
{
	struct zfcp_port *port = erp_action->port;
	int status = FUNC0(&port->status);

	switch (erp_action->step) {
	case ZFCP_ERP_STEP_UNINITIALIZED:
		FUNC2(port);
		if ((status & ZFCP_STATUS_PORT_PHYS_OPEN) &&
		    (status & ZFCP_STATUS_COMMON_OPEN))
			return FUNC1(erp_action);
		else
			return ZFCP_ERP_FAILED;

	case ZFCP_ERP_STEP_PHYS_PORT_CLOSING:
		if (!(status & ZFCP_STATUS_PORT_PHYS_OPEN))
			return ZFCP_ERP_SUCCEEDED;
	}
	return ZFCP_ERP_FAILED;
}