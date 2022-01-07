
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {TYPE_1__* aggregator; int actor_port_number; } ;
struct TYPE_2__ {int aggregator_identifier; scalar_t__ is_active; } ;


 int __enable_port (struct port*) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void ad_enable_collecting_distributing(struct port *port)
{
 if (port->aggregator->is_active) {
  pr_debug("Enabling port %d(LAG %d)\n", port->actor_port_number, port->aggregator->aggregator_identifier);
  __enable_port(port);
 }
}
