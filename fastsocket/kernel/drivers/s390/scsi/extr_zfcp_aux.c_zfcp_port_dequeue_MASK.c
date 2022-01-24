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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct zfcp_port {TYPE_2__ sysfs_device; int /*<<< orphan*/  adapter; int /*<<< orphan*/  refcount; int /*<<< orphan*/  remove_wq; int /*<<< orphan*/  test_link_work; int /*<<< orphan*/  rport_work; int /*<<< orphan*/  gid_pn_work; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_port*) ; 
 int /*<<< orphan*/  zfcp_sysfs_port_attrs ; 

void FUNC10(struct zfcp_port *port)
{
	FUNC6(&zfcp_data.config_lock);
	FUNC3(&port->list);
	FUNC7(&zfcp_data.config_lock);
	if (FUNC1(&port->gid_pn_work))
		FUNC9(port);
	if (FUNC1(&port->rport_work))
		FUNC9(port);
	if (FUNC1(&port->test_link_work))
		FUNC9(port);
	FUNC5(port->remove_wq, FUNC0(&port->refcount) == 0);
	FUNC8(port->adapter);
	FUNC4(&port->sysfs_device.kobj, &zfcp_sysfs_port_attrs);
	FUNC2(&port->sysfs_device);
}