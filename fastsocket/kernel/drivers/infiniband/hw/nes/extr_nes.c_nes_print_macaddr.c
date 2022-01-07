
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int dev_addr; int name; } ;


 int NES_DBG_INIT ;
 int nes_debug (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void nes_print_macaddr(struct net_device *netdev)
{
 nes_debug(NES_DBG_INIT, "%s: %pM, IRQ %u\n",
    netdev->name, netdev->dev_addr, netdev->irq);
}
