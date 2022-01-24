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
struct zfcp_port {int dummy; } ;
struct zfcp_adapter {int dummy; } ;
struct fc_rport {int /*<<< orphan*/  port_name; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_port*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct zfcp_port* FUNC4 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_port*) ; 

__attribute__((used)) static void FUNC7(struct fc_rport *rport)
{
	struct zfcp_port *port;
	struct Scsi_Host *shost = FUNC0(rport);
	struct zfcp_adapter *adapter =
		(struct zfcp_adapter *)shost->hostdata[0];

	FUNC1(&zfcp_data.config_lock);
	port = FUNC4(adapter, rport->port_name);
	if (port)
		FUNC5(port);
	FUNC2(&zfcp_data.config_lock);

	if (port) {
		FUNC3(port, 0, "sctrpi1", NULL);
		FUNC6(port);
	}
}