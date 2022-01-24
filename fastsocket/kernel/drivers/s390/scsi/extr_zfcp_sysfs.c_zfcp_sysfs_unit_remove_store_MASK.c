#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct zfcp_unit {TYPE_2__* port; int /*<<< orphan*/  list; int /*<<< orphan*/  status; int /*<<< orphan*/  refcount; } ;
struct zfcp_port {int /*<<< orphan*/  starget_id; TYPE_1__* adapter; int /*<<< orphan*/  status; } ;
struct scsi_lun {int dummy; } ;
struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  config_mutex; int /*<<< orphan*/  config_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  scsi_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFCP_STATUS_COMMON_REMOVE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 struct zfcp_port* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_lun*) ; 
 scalar_t__ FUNC13 (char const*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  unit_remove_lh ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_3__ zfcp_data ; 
 int /*<<< orphan*/  FUNC16 (struct zfcp_unit*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct zfcp_unit* FUNC18 (struct zfcp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct zfcp_unit*) ; 
 int /*<<< orphan*/  FUNC20 (struct zfcp_unit*) ; 
 int /*<<< orphan*/  FUNC21 (struct zfcp_unit*) ; 

__attribute__((used)) static ssize_t FUNC22(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf, size_t count)
{
	struct zfcp_port *port = FUNC3(dev);
	struct zfcp_unit *unit;
	u64 fcp_lun;
	FUNC0(unit_remove_lh);
	struct scsi_device *sdev;

	FUNC5(&zfcp_data.config_mutex);
	if (FUNC1(&port->status) & ZFCP_STATUS_COMMON_REMOVE) {
		FUNC6(&zfcp_data.config_mutex);
		return -EBUSY;
	}

	if (FUNC13(buf, 0, (unsigned long long *) &fcp_lun)) {
		FUNC6(&zfcp_data.config_mutex);
		return -EINVAL;
	}

	FUNC7(&zfcp_data.config_lock);
	unit = FUNC18(port, fcp_lun);
	FUNC8(&zfcp_data.config_lock);
	if (!unit) {
		FUNC6(&zfcp_data.config_mutex);
		return -ENXIO;
	}
	FUNC20(unit);
	FUNC6(&zfcp_data.config_mutex);

	sdev = FUNC9(port->adapter->scsi_host, 0,
				  port->starget_id,
				  FUNC12((struct scsi_lun *)&fcp_lun));
	if (sdev) {
		FUNC11(sdev);
		FUNC10(sdev);
	}

	FUNC5(&zfcp_data.config_mutex);
	FUNC21(unit);
	if (FUNC1(&unit->refcount)) {
		FUNC6(&zfcp_data.config_mutex);
		return -ENXIO;
	}

	FUNC14(&zfcp_data.config_lock);
	FUNC2(ZFCP_STATUS_COMMON_REMOVE, &unit->status);
	FUNC4(&unit->list, &unit_remove_lh);
	FUNC15(&zfcp_data.config_lock);
	FUNC6(&zfcp_data.config_mutex);

	FUNC16(unit, 0, "syurs_1", NULL);
	FUNC17(unit->port->adapter);
	FUNC19(unit);

	return (ssize_t)count;
}