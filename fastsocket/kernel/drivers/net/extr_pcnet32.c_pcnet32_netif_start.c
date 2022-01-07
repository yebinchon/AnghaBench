
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u16 ;
struct TYPE_2__ {int (* read_csr ) (int ,int ) ;int (* write_csr ) (int ,int ,int) ;} ;
struct pcnet32_private {int napi; TYPE_1__ a; } ;
struct net_device {int base_addr; } ;


 int CSR3 ;
 int napi_enable (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int) ;

__attribute__((used)) static void pcnet32_netif_start(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 ulong ioaddr = dev->base_addr;
 u16 val;

 netif_wake_queue(dev);
 val = lp->a.read_csr(ioaddr, CSR3);
 val &= 0x00ff;
 lp->a.write_csr(ioaddr, CSR3, val);
 napi_enable(&lp->napi);
}
