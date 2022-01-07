
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int * null_user_handler; TYPE_1__* bmc; int waitq; } ;
struct TYPE_5__ {int guid_set; } ;


 int * guid_handler ;
 int send_guid_cmd (TYPE_2__*,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void
get_guid(ipmi_smi_t intf)
{
 int rv;

 intf->bmc->guid_set = 0x2;
 intf->null_user_handler = guid_handler;
 rv = send_guid_cmd(intf, 0);
 if (rv)

  intf->bmc->guid_set = 0;
 wait_event(intf->waitq, intf->bmc->guid_set != 2);
 intf->null_user_handler = ((void*)0);
}
