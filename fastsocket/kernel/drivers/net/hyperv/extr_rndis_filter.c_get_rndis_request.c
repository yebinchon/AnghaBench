
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct rndis_set_request {int req_id; } ;
struct TYPE_2__ {struct rndis_set_request set_req; } ;
struct rndis_message {TYPE_1__ msg; void* msg_len; void* ndis_msg_type; } ;
struct rndis_request {int list_ent; struct rndis_message request_msg; int wait_event; } ;
struct rndis_device {int request_lock; int req_list; int new_req_id; } ;


 int GFP_KERNEL ;
 int atomic_inc_return (int *) ;
 int init_completion (int *) ;
 struct rndis_request* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct rndis_request *get_rndis_request(struct rndis_device *dev,
          u32 msg_type,
          u32 msg_len)
{
 struct rndis_request *request;
 struct rndis_message *rndis_msg;
 struct rndis_set_request *set;
 unsigned long flags;

 request = kzalloc(sizeof(struct rndis_request), GFP_KERNEL);
 if (!request)
  return ((void*)0);

 init_completion(&request->wait_event);

 rndis_msg = &request->request_msg;
 rndis_msg->ndis_msg_type = msg_type;
 rndis_msg->msg_len = msg_len;






 set = &rndis_msg->msg.set_req;
 set->req_id = atomic_inc_return(&dev->new_req_id);


 spin_lock_irqsave(&dev->request_lock, flags);
 list_add_tail(&request->list_ent, &dev->req_list);
 spin_unlock_irqrestore(&dev->request_lock, flags);

 return request;
}
