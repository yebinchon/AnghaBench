
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct veth_lpar_connection {int dst_inst; int src_inst; int remote_lp; } ;
typedef int HvLpEvent_Rc ;
typedef int HvLpEvent_AckType ;
typedef int HvLpEvent_AckInd ;


 int HvCallEvent_signalLpEventFast (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int HvLpEvent_Type_VirtualLan ;

__attribute__((used)) static inline HvLpEvent_Rc
veth_signalevent(struct veth_lpar_connection *cnx, u16 subtype,
   HvLpEvent_AckInd ackind, HvLpEvent_AckType acktype,
   u64 token,
   u64 data1, u64 data2, u64 data3, u64 data4, u64 data5)
{
 return HvCallEvent_signalLpEventFast(cnx->remote_lp,
          HvLpEvent_Type_VirtualLan,
          subtype, ackind, acktype,
          cnx->src_inst,
          cnx->dst_inst,
          token, data1, data2, data3,
          data4, data5);
}
