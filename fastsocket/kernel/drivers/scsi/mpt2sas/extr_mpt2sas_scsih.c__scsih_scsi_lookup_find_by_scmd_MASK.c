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
typedef  scalar_t__ u16 ;
struct scsi_cmnd {int dummy; } ;
struct MPT2SAS_ADAPTER {int scsiio_depth; int /*<<< orphan*/  scsi_lookup_lock; TYPE_1__* scsi_lookup; } ;
struct TYPE_2__ {scalar_t__ smid; struct scsi_cmnd* scmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u16
FUNC2(struct MPT2SAS_ADAPTER *ioc, struct scsi_cmnd
    *scmd)
{
	u16 smid;
	unsigned long	flags;
	int i;

	FUNC0(&ioc->scsi_lookup_lock, flags);
	smid = 0;
	for (i = 0; i < ioc->scsiio_depth; i++) {
		if (ioc->scsi_lookup[i].scmd == scmd) {
			smid = ioc->scsi_lookup[i].smid;
			goto out;
		}
	}
 out:
	FUNC1(&ioc->scsi_lookup_lock, flags);
	return smid;
}