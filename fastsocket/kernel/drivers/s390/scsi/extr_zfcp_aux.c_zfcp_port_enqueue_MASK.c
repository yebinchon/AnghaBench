#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct zfcp_port {int d_id; int /*<<< orphan*/  status; int /*<<< orphan*/  list; TYPE_3__ sysfs_device; int /*<<< orphan*/  refcount; int /*<<< orphan*/  rport_task; scalar_t__ wwpn; struct zfcp_adapter* adapter; int /*<<< orphan*/  rport_work; int /*<<< orphan*/  test_link_work; int /*<<< orphan*/  gid_pn_work; int /*<<< orphan*/  unit_list_head; int /*<<< orphan*/  remove_wq; } ;
struct zfcp_adapter {int /*<<< orphan*/  port_list_head; TYPE_1__* ccw_device; } ;
struct TYPE_9__ {int /*<<< orphan*/  config_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct zfcp_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPORT_NONE ; 
 int ZFCP_STATUS_COMMON_REMOVE ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct zfcp_port*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char*,unsigned long long) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_port*) ; 
 struct zfcp_port* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct zfcp_adapter*) ; 
 TYPE_2__ zfcp_data ; 
 int /*<<< orphan*/  zfcp_fc_link_test_work ; 
 int /*<<< orphan*/  zfcp_fc_port_did_lookup ; 
 scalar_t__ FUNC21 (struct zfcp_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct zfcp_port*) ; 
 int /*<<< orphan*/  zfcp_scsi_rport_work ; 
 int /*<<< orphan*/  zfcp_sysfs_port_attrs ; 
 int /*<<< orphan*/  zfcp_sysfs_port_release ; 

struct zfcp_port *FUNC23(struct zfcp_adapter *adapter, u64 wwpn,
				     u32 status, u32 d_id)
{
	struct zfcp_port *port;

	FUNC15(&zfcp_data.config_lock);
	if (FUNC21(adapter, wwpn)) {
		FUNC16(&zfcp_data.config_lock);
		return FUNC0(-EINVAL);
	}
	FUNC16(&zfcp_data.config_lock);

	port = FUNC12(sizeof(struct zfcp_port), GFP_KERNEL);
	if (!port)
		return FUNC0(-ENOMEM);

	FUNC10(&port->remove_wq);
	FUNC1(&port->unit_list_head);
	FUNC2(&port->gid_pn_work, zfcp_fc_port_did_lookup);
	FUNC2(&port->test_link_work, zfcp_fc_link_test_work);
	FUNC2(&port->rport_work, zfcp_scsi_rport_work);

	port->adapter = adapter;
	port->d_id = d_id;
	port->wwpn = wwpn;
	port->rport_task = RPORT_NONE;

	/* mark port unusable as long as sysfs registration is not complete */
	FUNC5(status | ZFCP_STATUS_COMMON_REMOVE, &port->status);
	FUNC4(&port->refcount, 0);

	if (FUNC7(&port->sysfs_device, "0x%016llx",
			 (unsigned long long)wwpn)) {
		FUNC11(port);
		return FUNC0(-ENOMEM);
	}
	port->sysfs_device.parent = &adapter->ccw_device->dev;
	port->sysfs_device.release = zfcp_sysfs_port_release;
	FUNC6(&port->sysfs_device, port);

	if (FUNC8(&port->sysfs_device)) {
		FUNC14(&port->sysfs_device);
		return FUNC0(-EINVAL);
	}

	if (FUNC17(&port->sysfs_device.kobj,
			       &zfcp_sysfs_port_attrs)) {
		FUNC9(&port->sysfs_device);
		return FUNC0(-EINVAL);
	}

	FUNC22(port);

	FUNC18(&zfcp_data.config_lock);
	FUNC13(&port->list, &adapter->port_list_head);
	FUNC3(ZFCP_STATUS_COMMON_REMOVE, &port->status);
	FUNC5(ZFCP_STATUS_COMMON_RUNNING, &port->status);

	FUNC19(&zfcp_data.config_lock);

	FUNC20(adapter);
	return port;
}