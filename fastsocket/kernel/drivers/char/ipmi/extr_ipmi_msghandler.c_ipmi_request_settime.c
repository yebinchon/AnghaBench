
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_addr {int dummy; } ;
typedef TYPE_1__* ipmi_user_t ;
struct TYPE_4__ {int intf; } ;


 int EINVAL ;
 int check_addr (int ,struct ipmi_addr*,unsigned char*,unsigned char*) ;
 int i_ipmi_request (TYPE_1__*,int ,struct ipmi_addr*,long,struct kernel_ipmi_msg*,void*,int *,int *,int,unsigned char,unsigned char,int,unsigned int) ;

int ipmi_request_settime(ipmi_user_t user,
    struct ipmi_addr *addr,
    long msgid,
    struct kernel_ipmi_msg *msg,
    void *user_msg_data,
    int priority,
    int retries,
    unsigned int retry_time_ms)
{
 unsigned char saddr, lun;
 int rv;

 if (!user)
  return -EINVAL;
 rv = check_addr(user->intf, addr, &saddr, &lun);
 if (rv)
  return rv;
 return i_ipmi_request(user,
         user->intf,
         addr,
         msgid,
         msg,
         user_msg_data,
         ((void*)0), ((void*)0),
         priority,
         saddr,
         lun,
         retries,
         retry_time_ms);
}
