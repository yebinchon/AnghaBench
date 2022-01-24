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
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_gid_pn_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gid_pn_data; } ;
struct zfcp_adapter {TYPE_1__ pool; TYPE_2__* gs; } ;
struct TYPE_4__ {int /*<<< orphan*/  ds; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct zfcp_gid_pn_data* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_gid_pn_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_gid_pn_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct zfcp_port*,struct zfcp_gid_pn_data*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct zfcp_port *port)
{
	int ret;
	struct zfcp_gid_pn_data *gid_pn;
	struct zfcp_adapter *adapter = port->adapter;

	gid_pn = FUNC0(adapter->pool.gid_pn_data, GFP_ATOMIC);
	if (!gid_pn)
		return -ENOMEM;

	FUNC2(gid_pn, 0, sizeof(*gid_pn));

	ret = FUNC4(&adapter->gs->ds);
	if (ret)
		goto out;

	ret = FUNC3(port, gid_pn);

	FUNC5(&adapter->gs->ds);
out:
	FUNC1(gid_pn, adapter->pool.gid_pn_data);
	return ret;
}