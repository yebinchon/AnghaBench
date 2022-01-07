
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int start; } ;
struct c2_port {int dma; int mem; int mem_size; TYPE_2__ tx_ring; TYPE_1__ rx_ring; struct c2_dev* c2dev; } ;
struct c2_dev {int pcidev; scalar_t__ regs; } ;


 scalar_t__ C2_IDIS ;
 scalar_t__ C2_NIMR0 ;
 int c2_reset (struct c2_port*) ;
 int c2_rx_clean (struct c2_port*) ;
 int c2_tx_clean (struct c2_port*) ;
 int c2_tx_interrupt (struct net_device*) ;
 int kfree (int ) ;
 struct c2_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifdown (struct c2_port*) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int pr_debug (char*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int c2_down(struct net_device *netdev)
{
 struct c2_port *c2_port = netdev_priv(netdev);
 struct c2_dev *c2dev = c2_port->c2dev;

 if (netif_msg_ifdown(c2_port))
  pr_debug("%s: disabling interface\n",
   netdev->name);


 c2_tx_interrupt(netdev);


 netif_stop_queue(netdev);


 writel(1, c2dev->regs + C2_IDIS);
 writel(0, c2dev->regs + C2_NIMR0);






 c2_reset(c2_port);




 c2_tx_clean(c2_port);
 c2_rx_clean(c2_port);


 kfree(c2_port->rx_ring.start);
 kfree(c2_port->tx_ring.start);
 pci_free_consistent(c2dev->pcidev, c2_port->mem_size, c2_port->mem,
       c2_port->dma);

 return 0;
}
