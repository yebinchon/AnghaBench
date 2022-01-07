
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct slave {scalar_t__ link; int speed; } ;
struct port {int actor_port_number; struct slave* slave; } ;


 scalar_t__ AD_LINK_SPEED_BITMASK_10000MBPS ;
 scalar_t__ AD_LINK_SPEED_BITMASK_1000MBPS ;
 scalar_t__ AD_LINK_SPEED_BITMASK_100MBPS ;
 scalar_t__ AD_LINK_SPEED_BITMASK_10MBPS ;
 scalar_t__ BOND_LINK_UP ;




 int pr_debug (char*,int ,scalar_t__) ;

__attribute__((used)) static u16 __get_link_speed(struct port *port)
{
 struct slave *slave = port->slave;
 u16 speed;





 if (slave->link != BOND_LINK_UP) {
  speed=0;
 } else {
  switch (slave->speed) {
  case 131:
   speed = AD_LINK_SPEED_BITMASK_10MBPS;
   break;

  case 130:
   speed = AD_LINK_SPEED_BITMASK_100MBPS;
   break;

  case 129:
   speed = AD_LINK_SPEED_BITMASK_1000MBPS;
   break;

  case 128:
   speed = AD_LINK_SPEED_BITMASK_10000MBPS;
   break;

  default:
   speed = 0;
   break;
  }
 }

 pr_debug("Port %d Received link speed %d update from adapter\n", port->actor_port_number, speed);
 return speed;
}
