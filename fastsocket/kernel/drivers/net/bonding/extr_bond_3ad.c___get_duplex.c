
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slave {scalar_t__ link; int duplex; } ;
struct port {int actor_port_number; struct slave* slave; } ;


 scalar_t__ BOND_LINK_UP ;


 int pr_debug (char*,int ) ;

__attribute__((used)) static u8 __get_duplex(struct port *port)
{
 struct slave *slave = port->slave;

 u8 retval;



 if (slave->link != BOND_LINK_UP) {
  retval=0x0;
 } else {
  switch (slave->duplex) {
  case 129:
   retval=0x1;
   pr_debug("Port %d Received status full duplex update from adapter\n", port->actor_port_number);
   break;
  case 128:
  default:
   retval=0x0;
   pr_debug("Port %d Received status NOT full duplex update from adapter\n", port->actor_port_number);
   break;
  }
 }
 return retval;
}
