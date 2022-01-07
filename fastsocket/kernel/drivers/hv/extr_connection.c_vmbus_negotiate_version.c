
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ version_supported; } ;
struct TYPE_7__ {TYPE_2__ version_response; } ;
struct vmbus_channel_msginfo {TYPE_3__ response; int msglistentry; int waitevent; scalar_t__ msg; } ;
struct TYPE_5__ {int msgtype; } ;
struct vmbus_channel_initiate_contact {void* monitor_page2; void* monitor_page1; void* interrupt_page; int vmbus_version_requested; TYPE_1__ header; } ;
typedef int __u32 ;
struct TYPE_8__ {void* int_page; void* monitor_pages; int conn_state; int channelmsg_lock; int chn_msg_list; } ;


 int CHANNELMSG_INITIATE_CONTACT ;
 int CONNECTED ;
 int ECONNREFUSED ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ PAGE_SIZE ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* virt_to_phys (void*) ;
 TYPE_4__ vmbus_connection ;
 int vmbus_post_msg (struct vmbus_channel_initiate_contact*,int) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int vmbus_negotiate_version(struct vmbus_channel_msginfo *msginfo,
     __u32 version)
{
 int ret = 0;
 struct vmbus_channel_initiate_contact *msg;
 unsigned long flags;
 int t;

 init_completion(&msginfo->waitevent);

 msg = (struct vmbus_channel_initiate_contact *)msginfo->msg;

 msg->header.msgtype = CHANNELMSG_INITIATE_CONTACT;
 msg->vmbus_version_requested = version;
 msg->interrupt_page = virt_to_phys(vmbus_connection.int_page);
 msg->monitor_page1 = virt_to_phys(vmbus_connection.monitor_pages);
 msg->monitor_page2 = virt_to_phys(
   (void *)((unsigned long)vmbus_connection.monitor_pages +
     PAGE_SIZE));





 spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
 list_add_tail(&msginfo->msglistentry,
        &vmbus_connection.chn_msg_list);

 spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock, flags);

 ret = vmbus_post_msg(msg,
          sizeof(struct vmbus_channel_initiate_contact));
 if (ret != 0) {
  spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
  list_del(&msginfo->msglistentry);
  spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock,
     flags);
  return ret;
 }


 t = wait_for_completion_timeout(&msginfo->waitevent, 5*HZ);
 if (t == 0) {
  spin_lock_irqsave(&vmbus_connection.channelmsg_lock,
    flags);
  list_del(&msginfo->msglistentry);
  spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock,
     flags);
  return -ETIMEDOUT;
 }

 spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
 list_del(&msginfo->msglistentry);
 spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock, flags);


 if (msginfo->response.version_response.version_supported) {
  vmbus_connection.conn_state = CONNECTED;
 } else {
  return -ECONNREFUSED;
 }

 return ret;
}
