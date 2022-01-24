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
struct zfcp_wka_port {scalar_t__ status; int /*<<< orphan*/  refcount; int /*<<< orphan*/  completion_wq; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EIO ; 
 int ERESTARTSYS ; 
 scalar_t__ ZFCP_WKA_PORT_CLOSING ; 
 scalar_t__ ZFCP_WKA_PORT_OFFLINE ; 
 scalar_t__ ZFCP_WKA_PORT_ONLINE ; 
 scalar_t__ ZFCP_WKA_PORT_OPENING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct zfcp_wka_port*) ; 

__attribute__((used)) static int FUNC5(struct zfcp_wka_port *wka_port)
{
	if (FUNC1(&wka_port->mutex))
		return -ERESTARTSYS;

	if (wka_port->status == ZFCP_WKA_PORT_OFFLINE ||
	    wka_port->status == ZFCP_WKA_PORT_CLOSING) {
		wka_port->status = ZFCP_WKA_PORT_OPENING;
		if (FUNC4(wka_port))
			wka_port->status = ZFCP_WKA_PORT_OFFLINE;
	}

	FUNC2(&wka_port->mutex);

	FUNC3(wka_port->completion_wq,
		   wka_port->status == ZFCP_WKA_PORT_ONLINE ||
		   wka_port->status == ZFCP_WKA_PORT_OFFLINE);

	if (wka_port->status == ZFCP_WKA_PORT_ONLINE) {
		FUNC0(&wka_port->refcount);
		return 0;
	}
	return -EIO;
}