
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {TYPE_1__* slave; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ BOND_STATE_ACTIVE ;

__attribute__((used)) static inline int __port_is_enabled(struct port *port)
{
 return(port->slave->state == BOND_STATE_ACTIVE);
}
