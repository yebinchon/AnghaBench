
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macvlan_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int compare_ether_addr_64bits (int ,unsigned char const*) ;
 scalar_t__ macvlan_hash_lookup (struct macvlan_port const*,unsigned char const*) ;

__attribute__((used)) static int macvlan_addr_busy(const struct macvlan_port *port,
    const unsigned char *addr)
{




 if (!compare_ether_addr_64bits(port->dev->dev_addr, addr))
  return 1;

 if (macvlan_hash_lookup(port, addr))
  return 1;

 return 0;
}
