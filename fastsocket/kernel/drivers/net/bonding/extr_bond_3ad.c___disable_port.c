
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int slave; } ;


 int bond_set_slave_inactive_flags (int ) ;

__attribute__((used)) static inline void __disable_port(struct port *port)
{
 bond_set_slave_inactive_flags(port->slave);
}
