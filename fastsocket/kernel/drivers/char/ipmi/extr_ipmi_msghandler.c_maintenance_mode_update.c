
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_5__ {int maintenance_mode_enable; int send_info; TYPE_1__* handlers; } ;
struct TYPE_4__ {int (* set_maintenance_mode ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void maintenance_mode_update(ipmi_smi_t intf)
{
 if (intf->handlers->set_maintenance_mode)
  intf->handlers->set_maintenance_mode(
   intf->send_info, intf->maintenance_mode_enable);
}
