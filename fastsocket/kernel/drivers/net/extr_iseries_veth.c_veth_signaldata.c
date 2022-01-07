
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct veth_lpar_connection {int dummy; } ;
typedef int HvLpEvent_Rc ;


 int HvLpEvent_AckInd_NoAck ;
 int HvLpEvent_AckType_ImmediateAck ;
 int veth_signalevent (struct veth_lpar_connection*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline HvLpEvent_Rc veth_signaldata(struct veth_lpar_connection *cnx,
        u16 subtype, u64 token, void *data)
{
 u64 *p = (u64 *) data;

 return veth_signalevent(cnx, subtype, HvLpEvent_AckInd_NoAck,
    HvLpEvent_AckType_ImmediateAck,
    token, p[0], p[1], p[2], p[3], p[4]);
}
