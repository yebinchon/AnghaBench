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
struct zfcp_port {int /*<<< orphan*/  adapter; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_PORT ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zfcp_port*,int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_port*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_port*) ; 

__attribute__((used)) static int FUNC5(struct zfcp_port *port, int clear, char *id,
				 void *ref)
{
	FUNC2(port, clear);
	FUNC4(port);

	if (FUNC0(&port->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
		/* ensure propagation of failed status to new devices */
		FUNC3(port, "erpreo1", NULL);
		return -EIO;
	}

	return FUNC1(ZFCP_ERP_ACTION_REOPEN_PORT,
				       port->adapter, port, NULL, id, ref);
}