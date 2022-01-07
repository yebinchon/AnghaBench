
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct onmessage_work_context {int work; int msg; } ;
struct TYPE_5__ {scalar_t__ msg_pending; } ;
struct TYPE_6__ {scalar_t__ message_type; TYPE_1__ message_flags; } ;
struct hv_message {TYPE_2__ header; } ;
struct TYPE_8__ {void** synic_message_page; } ;
struct TYPE_7__ {int work_queue; } ;


 int GFP_ATOMIC ;
 scalar_t__ HVMSG_NONE ;
 int HV_X64_MSR_EOM ;
 int INIT_WORK (int *,int ) ;
 int VMBUS_MESSAGE_SINT ;
 TYPE_4__ hv_context ;
 struct onmessage_work_context* kmalloc (int,int ) ;
 int mb () ;
 int memcpy (int *,struct hv_message*,int) ;
 int queue_work (int ,int *) ;
 int smp_processor_id () ;
 TYPE_3__ vmbus_connection ;
 int vmbus_onmessage_work ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void vmbus_on_msg_dpc(unsigned long data)
{
 int cpu = smp_processor_id();
 void *page_addr = hv_context.synic_message_page[cpu];
 struct hv_message *msg = (struct hv_message *)page_addr +
      VMBUS_MESSAGE_SINT;
 struct onmessage_work_context *ctx;

 while (1) {
  if (msg->header.message_type == HVMSG_NONE) {

   break;
  } else {
   ctx = kmalloc(sizeof(*ctx), GFP_ATOMIC);
   if (ctx == ((void*)0))
    continue;
   INIT_WORK(&ctx->work, vmbus_onmessage_work);
   memcpy(&ctx->msg, msg, sizeof(*msg));
   queue_work(vmbus_connection.work_queue, &ctx->work);
  }

  msg->header.message_type = HVMSG_NONE;
  mb();

  if (msg->header.message_flags.msg_pending) {





   wrmsrl(HV_X64_MSR_EOM, 0);
  }
 }
}
