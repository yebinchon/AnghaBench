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
typedef  int /*<<< orphan*/  u16 ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  scsi_lookup_lock; TYPE_1__* chip; } ;
struct TYPE_5__ {void* IoIndex; scalar_t__ LMID; void* SMID; int /*<<< orphan*/  MSIxIndex; int /*<<< orphan*/  RequestFlags; } ;
struct TYPE_6__ {TYPE_2__ SCSITarget; } ;
struct TYPE_4__ {int /*<<< orphan*/  RequestDescriptorPostLow; } ;
typedef  TYPE_3__ Mpi2RequestDescriptorUnion_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPI2_REQ_DESCRIPT_FLAGS_SCSI_TARGET ; 
 int /*<<< orphan*/  FUNC0 (struct MPT2SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct MPT2SAS_ADAPTER *ioc, u16 smid,
    u16 io_index)
{
	Mpi2RequestDescriptorUnion_t descriptor;
	u64 *request = (u64 *)&descriptor;

	descriptor.SCSITarget.RequestFlags =
	    MPI2_REQ_DESCRIPT_FLAGS_SCSI_TARGET;
	descriptor.SCSITarget.MSIxIndex =  FUNC0(ioc);
	descriptor.SCSITarget.SMID = FUNC2(smid);
	descriptor.SCSITarget.LMID = 0;
	descriptor.SCSITarget.IoIndex = FUNC2(io_index);
	FUNC1(*request, &ioc->chip->RequestDescriptorPostLow,
	    &ioc->scsi_lookup_lock);
}