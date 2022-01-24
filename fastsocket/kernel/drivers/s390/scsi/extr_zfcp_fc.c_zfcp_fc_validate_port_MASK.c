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
struct zfcp_port {scalar_t__ supported_classes; int /*<<< orphan*/  unit_list_head; int /*<<< orphan*/  status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int dummy; } ;

/* Variables and functions */
 int ZFCP_STATUS_COMMON_NOESC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_port*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_port*) ; 

__attribute__((used)) static void FUNC7(struct zfcp_port *port)
{
	struct zfcp_adapter *adapter = port->adapter;

	if (!(FUNC1(&port->status) & ZFCP_STATUS_COMMON_NOESC))
		return;

	FUNC0(ZFCP_STATUS_COMMON_NOESC, &port->status);

	if ((port->supported_classes != 0) ||
	    !FUNC2(&port->unit_list_head)) {
		FUNC6(port);
		return;
	}
	FUNC3(port, 0, "fcpval1", NULL);
	FUNC4(adapter);
	FUNC6(port);
	FUNC5(port);
}