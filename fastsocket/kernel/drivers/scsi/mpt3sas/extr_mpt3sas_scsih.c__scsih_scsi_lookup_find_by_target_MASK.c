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
typedef  int u8 ;
struct MPT3SAS_ADAPTER {int scsiio_depth; int /*<<< orphan*/  scsi_lookup_lock; TYPE_3__* scsi_lookup; } ;
struct TYPE_6__ {TYPE_2__* scmd; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int id; int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u8
FUNC2(struct MPT3SAS_ADAPTER *ioc, int id,
	int channel)
{
	u8 found;
	unsigned long	flags;
	int i;

	FUNC0(&ioc->scsi_lookup_lock, flags);
	found = 0;
	for (i = 0 ; i < ioc->scsiio_depth; i++) {
		if (ioc->scsi_lookup[i].scmd &&
		    (ioc->scsi_lookup[i].scmd->device->id == id &&
		    ioc->scsi_lookup[i].scmd->device->channel == channel)) {
			found = 1;
			goto out;
		}
	}
 out:
	FUNC1(&ioc->scsi_lookup_lock, flags);
	return found;
}