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
struct zfcp_unit {struct scsi_device* device; } ;
struct zfcp_adapter {int dummy; } ;
struct scsi_device {struct zfcp_unit* hostdata; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; TYPE_1__* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  config_lock; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__ zfcp_data ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_unit*) ; 
 struct zfcp_unit* FUNC3 (struct zfcp_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdp)
{
	struct zfcp_adapter *adapter;
	struct zfcp_unit *unit;
	unsigned long flags;
	int retval = -ENXIO;

	adapter = (struct zfcp_adapter *) sdp->host->hostdata[0];
	if (!adapter)
		goto out;

	FUNC0(&zfcp_data.config_lock, flags);
	unit = FUNC3(adapter, sdp->channel, sdp->id, sdp->lun);
	if (unit) {
		sdp->hostdata = unit;
		unit->device = sdp;
		FUNC2(unit);
		retval = 0;
	}
	FUNC1(&zfcp_data.config_lock, flags);
out:
	return retval;
}