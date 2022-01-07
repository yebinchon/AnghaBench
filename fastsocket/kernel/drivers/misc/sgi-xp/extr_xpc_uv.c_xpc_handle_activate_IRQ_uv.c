
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition {int dummy; } ;
struct xpc_activate_mq_msghdr_uv {short partid; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int gru_mq_desc; } ;


 int IRQ_HANDLED ;
 short XP_MAX_NPARTITIONS_UV ;
 int dev_err (int ,char*,short) ;
 int gru_free_message (int ,struct xpc_activate_mq_msghdr_uv*) ;
 struct xpc_activate_mq_msghdr_uv* gru_get_next_message (int ) ;
 int wake_up_interruptible (int *) ;
 int xpc_activate_IRQ_wq ;
 TYPE_1__* xpc_activate_mq_uv ;
 int xpc_handle_activate_mq_msg_uv (struct xpc_partition*,struct xpc_activate_mq_msghdr_uv*,int,int*) ;
 int xpc_part ;
 int xpc_part_deref (struct xpc_partition*) ;
 int xpc_part_ref (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;

__attribute__((used)) static irqreturn_t
xpc_handle_activate_IRQ_uv(int irq, void *dev_id)
{
 struct xpc_activate_mq_msghdr_uv *msg_hdr;
 short partid;
 struct xpc_partition *part;
 int wakeup_hb_checker = 0;
 int part_referenced;

 while (1) {
  msg_hdr = gru_get_next_message(xpc_activate_mq_uv->gru_mq_desc);
  if (msg_hdr == ((void*)0))
   break;

  partid = msg_hdr->partid;
  if (partid < 0 || partid >= XP_MAX_NPARTITIONS_UV) {
   dev_err(xpc_part, "xpc_handle_activate_IRQ_uv() "
    "received invalid partid=0x%x in message\n",
    partid);
  } else {
   part = &xpc_partitions[partid];

   part_referenced = xpc_part_ref(part);
   xpc_handle_activate_mq_msg_uv(part, msg_hdr,
            part_referenced,
            &wakeup_hb_checker);
   if (part_referenced)
    xpc_part_deref(part);
  }

  gru_free_message(xpc_activate_mq_uv->gru_mq_desc, msg_hdr);
 }

 if (wakeup_hb_checker)
  wake_up_interruptible(&xpc_activate_IRQ_wq);

 return IRQ_HANDLED;
}
