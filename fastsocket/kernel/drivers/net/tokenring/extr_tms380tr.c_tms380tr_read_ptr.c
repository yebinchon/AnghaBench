
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ AdapterRAMPtr; int BurnedInAddrPtr; } ;
struct net_local {TYPE_1__ intptrs; } ;
struct net_device {int dummy; } ;


 int ADAPTER_INT_PTRS ;
 int be16_to_cpu (unsigned short) ;
 int cpu_to_be16 (unsigned short) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int tms380tr_read_ram (struct net_device*,unsigned char*,int ,int) ;

__attribute__((used)) static int tms380tr_read_ptr(struct net_device *dev)
{
 struct net_local *tp = netdev_priv(dev);
 unsigned short adapterram;

 tms380tr_read_ram(dev, (unsigned char *)&tp->intptrs.BurnedInAddrPtr,
   ADAPTER_INT_PTRS, 16);
 tms380tr_read_ram(dev, (unsigned char *)&adapterram,
   cpu_to_be16((unsigned short)tp->intptrs.AdapterRAMPtr), 2);
 return be16_to_cpu(adapterram);
}
