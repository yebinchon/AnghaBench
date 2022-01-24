#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_19__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct TYPE_27__ {int min; } ;
struct TYPE_26__ {int min; } ;
struct TYPE_28__ {TYPE_8__ fabric; TYPE_7__ channel; } ;
struct TYPE_24__ {int min; } ;
struct TYPE_23__ {int min; } ;
struct TYPE_25__ {TYPE_5__ fabric; TYPE_4__ channel; } ;
struct TYPE_21__ {int min; } ;
struct TYPE_20__ {int min; } ;
struct TYPE_22__ {TYPE_2__ fabric; TYPE_1__ channel; } ;
struct TYPE_17__ {TYPE_9__ cmd; TYPE_6__ read; TYPE_3__ write; int /*<<< orphan*/  lock; } ;
struct zfcp_unit {int /*<<< orphan*/  status; int /*<<< orphan*/  list; TYPE_12__ sysfs_device; TYPE_10__ latencies; scalar_t__ fcp_lun; struct zfcp_port* port; int /*<<< orphan*/  scsi_work; int /*<<< orphan*/  remove_wq; int /*<<< orphan*/  refcount; } ;
struct zfcp_port {int /*<<< orphan*/  unit_list_head; int /*<<< orphan*/  sysfs_device; } ;
struct TYPE_18__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct zfcp_unit* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_REMOVE ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*,struct zfcp_unit*) ; 
 scalar_t__ FUNC6 (TYPE_12__*,char*,unsigned long long) ; 
 scalar_t__ FUNC7 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_unit*) ; 
 struct zfcp_unit* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_11__ zfcp_data ; 
 scalar_t__ FUNC20 (struct zfcp_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct zfcp_port*) ; 
 int /*<<< orphan*/  zfcp_scsi_scan_work ; 
 int /*<<< orphan*/  zfcp_sysfs_unit_attrs ; 
 int /*<<< orphan*/  zfcp_sysfs_unit_release ; 
 int /*<<< orphan*/  FUNC22 (struct zfcp_unit*) ; 

struct zfcp_unit *FUNC23(struct zfcp_port *port, u64 fcp_lun)
{
	struct zfcp_unit *unit;

	FUNC14(&zfcp_data.config_lock);
	if (FUNC20(port, fcp_lun)) {
		FUNC15(&zfcp_data.config_lock);
		return FUNC0(-EINVAL);
	}
	FUNC15(&zfcp_data.config_lock);

	unit = FUNC11(sizeof(struct zfcp_unit), GFP_KERNEL);
	if (!unit)
		return FUNC0(-ENOMEM);

	FUNC3(&unit->refcount, 0);
	FUNC9(&unit->remove_wq);
	FUNC1(&unit->scsi_work, zfcp_scsi_scan_work);

	unit->port = port;
	unit->fcp_lun = fcp_lun;

	if (FUNC6(&unit->sysfs_device, "0x%016llx",
			 (unsigned long long) fcp_lun)) {
		FUNC10(unit);
		return FUNC0(-ENOMEM);
	}
	unit->sysfs_device.parent = &port->sysfs_device;
	unit->sysfs_device.release = zfcp_sysfs_unit_release;
	FUNC5(&unit->sysfs_device, unit);

	/* mark unit unusable as long as sysfs registration is not complete */
	FUNC4(ZFCP_STATUS_COMMON_REMOVE, &unit->status);

	FUNC16(&unit->latencies.lock);
	unit->latencies.write.channel.min = 0xFFFFFFFF;
	unit->latencies.write.fabric.min = 0xFFFFFFFF;
	unit->latencies.read.channel.min = 0xFFFFFFFF;
	unit->latencies.read.fabric.min = 0xFFFFFFFF;
	unit->latencies.cmd.channel.min = 0xFFFFFFFF;
	unit->latencies.cmd.fabric.min = 0xFFFFFFFF;

	if (FUNC7(&unit->sysfs_device)) {
		FUNC13(&unit->sysfs_device);
		return FUNC0(-EINVAL);
	}

	if (FUNC17(&unit->sysfs_device.kobj,
			       &zfcp_sysfs_unit_attrs)) {
		FUNC8(&unit->sysfs_device);
		return FUNC0(-EINVAL);
	}

	FUNC22(unit);

	FUNC18(&zfcp_data.config_lock);
	FUNC12(&unit->list, &port->unit_list_head);
	FUNC2(ZFCP_STATUS_COMMON_REMOVE, &unit->status);
	FUNC4(ZFCP_STATUS_COMMON_RUNNING, &unit->status);

	FUNC19(&zfcp_data.config_lock);

	FUNC21(port);

	return unit;
}