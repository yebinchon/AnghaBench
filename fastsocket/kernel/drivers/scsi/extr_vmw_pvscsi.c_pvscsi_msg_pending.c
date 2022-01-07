
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {struct PVSCSIRingsState* rings_state; } ;
struct PVSCSIRingsState {scalar_t__ msgProdIdx; scalar_t__ msgConsIdx; } ;



__attribute__((used)) static int pvscsi_msg_pending(const struct pvscsi_adapter *adapter)
{
 struct PVSCSIRingsState *s = adapter->rings_state;

 return s->msgProdIdx != s->msgConsIdx;
}
