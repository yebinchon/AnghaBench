
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb1000_private {int rx_error_dpc_count; } ;
struct net_device {int base_addr; int mem_start; char* name; } ;


 struct sb1000_private* netdev_priv (struct net_device*) ;
 int sb1000_read_status (int*,unsigned char*) ;
 int sb1000_send_command (int*,char*,unsigned char const*) ;
 int sb1000_wait_for_ready (int*,char*) ;
 int sb1000_wait_for_ready_clear (int*,char*) ;

__attribute__((used)) static void
sb1000_error_dpc(struct net_device *dev)
{
 static const unsigned char Command0[6] = {0x80, 0x26, 0x00, 0x00, 0x00, 0x00};

 char *name;
 unsigned char st[5];
 int ioaddr[2];
 struct sb1000_private *lp = netdev_priv(dev);
 const int ErrorDpcCounterInitialize = 200;

 ioaddr[0] = dev->base_addr;

 ioaddr[1] = dev->mem_start;
 name = dev->name;

 sb1000_wait_for_ready_clear(ioaddr, name);
 sb1000_send_command(ioaddr, name, Command0);
 sb1000_wait_for_ready(ioaddr, name);
 sb1000_read_status(ioaddr, st);
 if (st[1] & 0x10)
  lp->rx_error_dpc_count = ErrorDpcCounterInitialize;
 return;
}
