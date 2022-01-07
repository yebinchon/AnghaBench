
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ixgbe_bus_speed { ____Placeholder_ixgbe_bus_speed } ixgbe_bus_speed ;


 int IXGBE_PCI_LINK_SPEED ;



 int ixgbe_bus_speed_2500 ;
 int ixgbe_bus_speed_5000 ;
 int ixgbe_bus_speed_8000 ;
 int ixgbe_bus_speed_unknown ;

enum ixgbe_bus_speed ixgbe_convert_bus_speed(u16 link_status)
{
 switch (link_status & IXGBE_PCI_LINK_SPEED) {
 case 130:
  return ixgbe_bus_speed_2500;
 case 129:
  return ixgbe_bus_speed_5000;
 case 128:
  return ixgbe_bus_speed_8000;
 default:
  return ixgbe_bus_speed_unknown;
 }
}
