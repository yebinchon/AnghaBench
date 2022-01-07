
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipmi_user_t ;
struct TYPE_3__ {int intf; } ;


 int ipmi_poll (int ) ;

void ipmi_poll_interface(ipmi_user_t user)
{
 ipmi_poll(user->intf);
}
