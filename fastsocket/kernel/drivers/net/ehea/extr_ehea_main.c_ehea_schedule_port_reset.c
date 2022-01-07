
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port {int reset_task; int flags; } ;


 int __EHEA_DISABLE_PORT_RESET ;
 int schedule_work (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ehea_schedule_port_reset(struct ehea_port *port)
{
 if (!test_bit(__EHEA_DISABLE_PORT_RESET, &port->flags))
  schedule_work(&port->reset_task);
}
