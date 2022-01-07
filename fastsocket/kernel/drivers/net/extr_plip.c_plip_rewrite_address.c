
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; struct in_device* ip_ptr; } ;
struct in_ifaddr {int ifa_address; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;
struct ethhdr {scalar_t__ h_dest; scalar_t__ h_source; } ;


 int memcpy (scalar_t__,int *,int) ;
 int memset (scalar_t__,int,int) ;

__attribute__((used)) static void
plip_rewrite_address(const struct net_device *dev, struct ethhdr *eth)
{
 const struct in_device *in_dev = dev->ip_ptr;

 if (in_dev) {

  const struct in_ifaddr *ifa = in_dev->ifa_list;
  if (ifa) {
   memcpy(eth->h_source, dev->dev_addr, 6);
   memset(eth->h_dest, 0xfc, 2);
   memcpy(eth->h_dest+2, &ifa->ifa_address, 4);
  }
 }
}
