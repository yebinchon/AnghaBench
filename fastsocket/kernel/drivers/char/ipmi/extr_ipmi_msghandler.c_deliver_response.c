
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ipmi_recv_msg {TYPE_2__* user; TYPE_3__* user_msg_data; } ;
typedef TYPE_2__* ipmi_user_t ;
typedef TYPE_3__* ipmi_smi_t ;
struct TYPE_8__ {int (* null_user_handler ) (TYPE_3__*,struct ipmi_recv_msg*) ;} ;
struct TYPE_7__ {int handler_data; TYPE_1__* handler; } ;
struct TYPE_6__ {int (* ipmi_recv_hndl ) (struct ipmi_recv_msg*,int ) ;} ;


 int handled_local_responses ;
 int ipmi_free_recv_msg (struct ipmi_recv_msg*) ;
 int ipmi_inc_stat (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*,struct ipmi_recv_msg*) ;
 int stub2 (struct ipmi_recv_msg*,int ) ;
 int unhandled_local_responses ;

__attribute__((used)) static void deliver_response(struct ipmi_recv_msg *msg)
{
 if (!msg->user) {
  ipmi_smi_t intf = msg->user_msg_data;


  if (intf->null_user_handler) {
   intf->null_user_handler(intf, msg);
   ipmi_inc_stat(intf, handled_local_responses);
  } else {

   ipmi_inc_stat(intf, unhandled_local_responses);
  }
  ipmi_free_recv_msg(msg);
 } else {
  ipmi_user_t user = msg->user;
  user->handler->ipmi_recv_hndl(msg, user->handler_data);
 }
}
