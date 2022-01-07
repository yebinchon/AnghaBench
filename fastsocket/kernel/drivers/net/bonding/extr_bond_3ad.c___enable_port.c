
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {scalar_t__ link; int dev; } ;
struct port {struct slave* slave; } ;


 scalar_t__ BOND_LINK_UP ;
 scalar_t__ IS_UP (int ) ;
 int bond_set_slave_active_flags (struct slave*) ;

__attribute__((used)) static inline void __enable_port(struct port *port)
{
 struct slave *slave = port->slave;

 if ((slave->link == BOND_LINK_UP) && IS_UP(slave->dev)) {
  bond_set_slave_active_flags(slave);
 }
}
