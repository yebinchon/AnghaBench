
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_system_interface_addr {int lun; int channel; int addr_type; } ;
struct ipmi_smi_msg {int rsp_size; int* rsp; } ;
struct TYPE_3__ {int netfn; int cmd; int data_len; int data; } ;
struct ipmi_recv_msg {int msg_data; TYPE_1__ msg; int recv_type; int * user_msg_data; TYPE_2__* user; int addr; } ;
struct cmd_rcvr {TYPE_2__* user; } ;
typedef TYPE_2__* ipmi_user_t ;
typedef int ipmi_smi_t ;
struct TYPE_4__ {int refcount; } ;


 int IPMI_BMC_CHANNEL ;
 int IPMI_OEM_RECV_TYPE ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int deliver_response (struct ipmi_recv_msg*) ;
 struct cmd_rcvr* find_cmd_rcvr (int ,unsigned char,unsigned char,unsigned char) ;
 int free_user ;
 int handled_commands ;
 int invalid_commands ;
 struct ipmi_recv_msg* ipmi_alloc_recv_msg () ;
 int ipmi_inc_stat (int ,int ) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int memcpy (int ,int*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int unhandled_commands ;

__attribute__((used)) static int handle_oem_get_msg_cmd(ipmi_smi_t intf,
      struct ipmi_smi_msg *msg)
{
 struct cmd_rcvr *rcvr;
 int rv = 0;
 unsigned char netfn;
 unsigned char cmd;
 unsigned char chan;
 ipmi_user_t user = ((void*)0);
 struct ipmi_system_interface_addr *smi_addr;
 struct ipmi_recv_msg *recv_msg;





 if (msg->rsp_size < 4) {

  ipmi_inc_stat(intf, invalid_commands);
  return 0;
 }

 if (msg->rsp[2] != 0) {

  return 0;
 }





 netfn = msg->rsp[0] >> 2;
 cmd = msg->rsp[1];
 chan = msg->rsp[3] & 0xf;

 rcu_read_lock();
 rcvr = find_cmd_rcvr(intf, netfn, cmd, chan);
 if (rcvr) {
  user = rcvr->user;
  kref_get(&user->refcount);
 } else
  user = ((void*)0);
 rcu_read_unlock();

 if (user == ((void*)0)) {

  ipmi_inc_stat(intf, unhandled_commands);






  rv = 0;
 } else {

  ipmi_inc_stat(intf, handled_commands);

  recv_msg = ipmi_alloc_recv_msg();
  if (!recv_msg) {





   rv = 1;
   kref_put(&user->refcount, free_user);
  } else {






   smi_addr = ((struct ipmi_system_interface_addr *)
        &(recv_msg->addr));
   smi_addr->addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
   smi_addr->channel = IPMI_BMC_CHANNEL;
   smi_addr->lun = msg->rsp[0] & 3;

   recv_msg->user = user;
   recv_msg->user_msg_data = ((void*)0);
   recv_msg->recv_type = IPMI_OEM_RECV_TYPE;
   recv_msg->msg.netfn = msg->rsp[0] >> 2;
   recv_msg->msg.cmd = msg->rsp[1];
   recv_msg->msg.data = recv_msg->msg_data;





   recv_msg->msg.data_len = msg->rsp_size - 4;
   memcpy(recv_msg->msg_data,
          &(msg->rsp[4]),
          msg->rsp_size - 4);
   deliver_response(recv_msg);
  }
 }

 return rv;
}
