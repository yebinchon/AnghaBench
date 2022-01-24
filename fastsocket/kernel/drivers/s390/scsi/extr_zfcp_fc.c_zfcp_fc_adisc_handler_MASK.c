#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zfcp_port {scalar_t__ wwpn; int /*<<< orphan*/  status; scalar_t__ wwnn; } ;
struct zfcp_ls_adisc {scalar_t__ wwpn; scalar_t__ wwnn; } ;
struct TYPE_3__ {scalar_t__ status; struct zfcp_port* port; } ;
struct zfcp_els_adisc {TYPE_1__ els; struct zfcp_ls_adisc ls_adisc_acc; } ;
struct TYPE_4__ {int /*<<< orphan*/  adisc_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int /*<<< orphan*/  ZFCP_STATUS_PORT_LINK_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct zfcp_els_adisc*) ; 
 TYPE_2__ zfcp_data ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_port*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_port*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_port*) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct zfcp_els_adisc *adisc = (struct zfcp_els_adisc *) data;
	struct zfcp_port *port = adisc->els.port;
	struct zfcp_ls_adisc *ls_adisc = &adisc->ls_adisc_acc;

	if (adisc->els.status) {
		/* request rejected or timed out */
		FUNC3(port, ZFCP_STATUS_COMMON_ERP_FAILED,
					    "fcadh_1", NULL);
		goto out;
	}

	if (!port->wwnn)
		port->wwnn = ls_adisc->wwnn;

	if ((port->wwpn != ls_adisc->wwpn) ||
	    !(FUNC1(&port->status) & ZFCP_STATUS_COMMON_OPEN)) {
		FUNC4(port, ZFCP_STATUS_COMMON_ERP_FAILED,
				     "fcadh_2", NULL);
		goto out;
	}

	/* port is good, unblock rport without going through erp */
	FUNC6(port);
 out:
	FUNC0(ZFCP_STATUS_PORT_LINK_TEST, &port->status);
	FUNC5(port);
	FUNC2(zfcp_data.adisc_cache, adisc);
}