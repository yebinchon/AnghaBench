
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int send_info; TYPE_1__* handlers; } ;
struct TYPE_5__ {int (* poll ) (int ) ;} ;


 int handle_new_recv_msgs (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void ipmi_poll(ipmi_smi_t intf)
{
 if (intf->handlers->poll)
  intf->handlers->poll(intf->send_info);

 handle_new_recv_msgs(intf);
}
