
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_5__ {int NumEntries; TYPE_1__* PHY; scalar_t__ StartPhyNum; } ;
struct TYPE_4__ {int PhyStatus; int AttachedDevHandle; } ;
typedef TYPE_2__ Mpi2EventDataSasTopologyChangeList_t ;


 int MPI2_EVENT_SAS_TOPO_RC_DELAY_NOT_RESPONDING ;
 int MPI2_EVENT_SAS_TOPO_RC_MASK ;
 int _scsih_block_io_device (struct MPT2SAS_ADAPTER*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_block_io_to_children_attached_directly(struct MPT2SAS_ADAPTER *ioc,
    Mpi2EventDataSasTopologyChangeList_t *event_data)
{
 int i;
 u16 handle;
 u16 reason_code;
 u8 phy_number;

 for (i = 0; i < event_data->NumEntries; i++) {
  handle = le16_to_cpu(event_data->PHY[i].AttachedDevHandle);
  if (!handle)
   continue;
  phy_number = event_data->StartPhyNum + i;
  reason_code = event_data->PHY[i].PhyStatus &
      MPI2_EVENT_SAS_TOPO_RC_MASK;
  if (reason_code == MPI2_EVENT_SAS_TOPO_RC_DELAY_NOT_RESPONDING)
   _scsih_block_io_device(ioc, handle);
 }
}
