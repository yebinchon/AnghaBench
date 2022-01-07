
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ibmvscsi_host_data {int dummy; } ;


 int HvCallEvent_signalLpEventFast (int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int ) ;
 int HvLpEvent_AckInd_NoAck ;
 int HvLpEvent_AckType_ImmediateAck ;
 int HvLpEvent_Type_VirtualIo ;
 int VIOVERSION ;
 struct ibmvscsi_host_data* single_host_data ;
 int viomajorsubtype_scsi ;
 int viopath_hostLp ;
 int viopath_sourceinst (int ) ;
 int viopath_targetinst (int ) ;

__attribute__((used)) static int iseriesvscsi_send_crq(struct ibmvscsi_host_data *hostdata,
     u64 word1, u64 word2)
{
 single_host_data = hostdata;
 return HvCallEvent_signalLpEventFast(viopath_hostLp,
          HvLpEvent_Type_VirtualIo,
          viomajorsubtype_scsi,
          HvLpEvent_AckInd_NoAck,
          HvLpEvent_AckType_ImmediateAck,
          viopath_sourceinst(viopath_hostLp),
          viopath_targetinst(viopath_hostLp),
          0,
          VIOVERSION << 16, word1, word2, 0,
          0);
}
