
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ IS_BROADCAST (scalar_t__*) ;
 scalar_t__ IS_MULTICAST (scalar_t__*) ;

__attribute__((used)) static bool
mac_addr_valid(u8 *mac_addr)
{
 bool is_valid = 1;
 DEBUGFUNC("mac_addr_valid");


 if (IS_MULTICAST(mac_addr)) {
  DEBUGOUT("MAC address is multicast\n");
  is_valid = 0;
 }

 else if (IS_BROADCAST(mac_addr)) {
  DEBUGOUT("MAC address is broadcast\n");
  is_valid = 0;
 }

 else if (mac_addr[0] == 0 &&
    mac_addr[1] == 0 &&
    mac_addr[2] == 0 &&
    mac_addr[3] == 0 &&
    mac_addr[4] == 0 &&
    mac_addr[5] == 0) {
  DEBUGOUT("MAC address is all zeros\n");
  is_valid = 0;
 }
 return (is_valid);
}
