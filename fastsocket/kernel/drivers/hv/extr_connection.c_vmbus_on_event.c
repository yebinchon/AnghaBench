
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union hv_synic_event_flags {size_t* flags32; } ;
typedef size_t u32 ;
struct TYPE_4__ {void** synic_event_page; } ;
struct TYPE_3__ {size_t* recv_int_page; } ;


 size_t HV_EVENT_FLAGS_DWORD_COUNT ;
 int MAX_NUM_CHANNELS_SUPPORTED ;
 scalar_t__ VERSION_WIN7 ;
 scalar_t__ VERSION_WS2008 ;
 int VMBUS_MESSAGE_SINT ;
 TYPE_2__ hv_context ;
 int process_chn_event (size_t) ;
 int smp_processor_id () ;
 scalar_t__ sync_test_and_clear_bit (int,unsigned long*) ;
 TYPE_1__ vmbus_connection ;
 scalar_t__ vmbus_proto_version ;

void vmbus_on_event(unsigned long data)
{
 u32 dword;
 u32 maxdword;
 int bit;
 u32 relid;
 u32 *recv_int_page = ((void*)0);
 void *page_addr;
 int cpu = smp_processor_id();
 union hv_synic_event_flags *event;

 if ((vmbus_proto_version == VERSION_WS2008) ||
  (vmbus_proto_version == VERSION_WIN7)) {
  maxdword = MAX_NUM_CHANNELS_SUPPORTED >> 5;
  recv_int_page = vmbus_connection.recv_int_page;
 } else {





  maxdword = HV_EVENT_FLAGS_DWORD_COUNT;
  page_addr = hv_context.synic_event_page[cpu];
  event = (union hv_synic_event_flags *)page_addr +
       VMBUS_MESSAGE_SINT;
  recv_int_page = event->flags32;
 }




 if (!recv_int_page)
  return;
 for (dword = 0; dword < maxdword; dword++) {
  if (!recv_int_page[dword])
   continue;
  for (bit = 0; bit < 32; bit++) {
   if (sync_test_and_clear_bit(bit,
    (unsigned long *)&recv_int_page[dword])) {
    relid = (dword << 5) + bit;

    if (relid == 0)




     continue;

    process_chn_event(relid);
   }
  }
 }
}
