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
struct zfcp_port {int dummy; } ;
struct zfcp_adapter {int /*<<< orphan*/  peer_d_id; int /*<<< orphan*/  peer_wwpn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_port*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct zfcp_port* FUNC2 (struct zfcp_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_port*) ; 

__attribute__((used)) static void FUNC4(struct zfcp_adapter *adapter)
{
	struct zfcp_port *port;
	port = FUNC2(adapter, adapter->peer_wwpn, 0,
				 adapter->peer_d_id);
	if (FUNC0(port)) /* error or port already attached */
		return;
	FUNC1(port, 0, "ereptp1", NULL);
	FUNC3(port);
}