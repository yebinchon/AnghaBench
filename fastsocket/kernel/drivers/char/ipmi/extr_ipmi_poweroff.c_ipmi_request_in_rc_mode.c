
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_addr {int dummy; } ;
typedef int ipmi_user_t ;
struct TYPE_4__ {int* data; } ;
struct TYPE_5__ {TYPE_1__ msg; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int cpu_relax () ;
 int dummy_count ;
 TYPE_2__ halt_recv_msg ;
 int halt_smi_msg ;
 int ipmi_poll_interface (int ) ;
 int ipmi_request_supply_msgs (int ,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,int *,int *,TYPE_2__*,int ) ;

__attribute__((used)) static int ipmi_request_in_rc_mode(ipmi_user_t user,
       struct ipmi_addr *addr,
       struct kernel_ipmi_msg *send_msg)
{
 int rv;

 atomic_set(&dummy_count, 2);
 rv = ipmi_request_supply_msgs(user, addr, 0, send_msg, ((void*)0),
          &halt_smi_msg, &halt_recv_msg, 0);
 if (rv) {
  atomic_set(&dummy_count, 0);
  return rv;
 }




 while (atomic_read(&dummy_count) > 0) {
  ipmi_poll_interface(user);
  cpu_relax();
 }

 return halt_recv_msg.msg.data[0];
}
