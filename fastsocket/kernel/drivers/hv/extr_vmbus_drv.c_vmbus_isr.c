
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union hv_synic_event_flags {int * flags32; } ;
struct TYPE_3__ {scalar_t__ message_type; } ;
struct hv_message {TYPE_1__ header; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {void** synic_message_page; int ** event_dpc; void** synic_event_page; } ;


 scalar_t__ HVMSG_NONE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ VERSION_WIN7 ;
 scalar_t__ VERSION_WS2008 ;
 int VMBUS_MESSAGE_SINT ;
 TYPE_2__ hv_context ;
 int msg_dpc ;
 int smp_processor_id () ;
 scalar_t__ sync_test_and_clear_bit (int ,unsigned long*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ vmbus_proto_version ;

__attribute__((used)) static irqreturn_t vmbus_isr(int irq, void *dev_id)
{
 int cpu = smp_processor_id();
 void *page_addr;
 struct hv_message *msg;
 union hv_synic_event_flags *event;
 bool handled = 0;

 page_addr = hv_context.synic_event_page[cpu];
 if (page_addr == ((void*)0))
  return IRQ_NONE;

 event = (union hv_synic_event_flags *)page_addr +
      VMBUS_MESSAGE_SINT;






 if ((vmbus_proto_version == VERSION_WS2008) ||
  (vmbus_proto_version == VERSION_WIN7)) {


  if (sync_test_and_clear_bit(0,
   (unsigned long *) &event->flags32[0])) {
   handled = 1;
  }
 } else {






  handled = 1;
 }

 if (handled)
  tasklet_schedule(hv_context.event_dpc[cpu]);


 page_addr = hv_context.synic_message_page[cpu];
 msg = (struct hv_message *)page_addr + VMBUS_MESSAGE_SINT;


 if (msg->header.message_type != HVMSG_NONE) {
  handled = 1;
  tasklet_schedule(&msg_dpc);
 }

 if (handled)
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
