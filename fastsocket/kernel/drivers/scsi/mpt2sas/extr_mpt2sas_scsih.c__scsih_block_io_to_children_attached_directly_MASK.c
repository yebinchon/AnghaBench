#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_5__ {int NumEntries; TYPE_1__* PHY; scalar_t__ StartPhyNum; } ;
struct TYPE_4__ {int PhyStatus; int /*<<< orphan*/  AttachedDevHandle; } ;
typedef  TYPE_2__ Mpi2EventDataSasTopologyChangeList_t ;

/* Variables and functions */
 int MPI2_EVENT_SAS_TOPO_RC_DELAY_NOT_RESPONDING ; 
 int MPI2_EVENT_SAS_TOPO_RC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct MPT2SAS_ADAPTER*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct MPT2SAS_ADAPTER *ioc,
    Mpi2EventDataSasTopologyChangeList_t *event_data)
{
	int i;
	u16 handle;
	u16 reason_code;
	u8 phy_number;

	for (i = 0; i < event_data->NumEntries; i++) {
		handle = FUNC1(event_data->PHY[i].AttachedDevHandle);
		if (!handle)
			continue;
		phy_number = event_data->StartPhyNum + i;
		reason_code = event_data->PHY[i].PhyStatus &
		    MPI2_EVENT_SAS_TOPO_RC_MASK;
		if (reason_code == MPI2_EVENT_SAS_TOPO_RC_DELAY_NOT_RESPONDING)
			FUNC0(ioc, handle);
	}
}