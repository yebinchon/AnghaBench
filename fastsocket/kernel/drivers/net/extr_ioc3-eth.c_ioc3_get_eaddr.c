
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc3_private {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ioc3_get_eaddr_nic (struct ioc3_private*) ;
 int printk (char*,int ) ;
 TYPE_1__* priv_netdev (struct ioc3_private*) ;

__attribute__((used)) static void ioc3_get_eaddr(struct ioc3_private *ip)
{
 ioc3_get_eaddr_nic(ip);

 printk("Ethernet address is %pM.\n", priv_netdev(ip)->dev_addr);
}
