
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {struct PVSCSIRingMsgDesc* msg_ring; struct PVSCSIRingsState* rings_state; } ;
struct PVSCSIRingsState {int msgConsIdx; int msgNumEntriesLog2; } ;
struct PVSCSIRingMsgDesc {int dummy; } ;


 int MASK (int ) ;
 int barrier () ;
 scalar_t__ pvscsi_msg_pending (struct pvscsi_adapter const*) ;
 int pvscsi_process_msg (struct pvscsi_adapter const*,struct PVSCSIRingMsgDesc*) ;

__attribute__((used)) static void pvscsi_process_msg_ring(const struct pvscsi_adapter *adapter)
{
 struct PVSCSIRingsState *s = adapter->rings_state;
 struct PVSCSIRingMsgDesc *ring = adapter->msg_ring;
 u32 msg_entries = s->msgNumEntriesLog2;

 while (pvscsi_msg_pending(adapter)) {
  struct PVSCSIRingMsgDesc *e = ring + (s->msgConsIdx &
            MASK(msg_entries));

  barrier();
  pvscsi_process_msg(adapter, e);
  barrier();
  s->msgConsIdx++;
 }
}
