
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {int rx_packets; int rx_bytes; int check_timer; int txirq; int rxirq; struct platform_device* pdev; } ;
struct platform_device {int dev; int name; } ;
struct net_device {int name; } ;


 int EAGAIN ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int free_irq (int ,struct net_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int,int ,struct net_device*) ;
 int w90p910_enable_cam (struct net_device*) ;
 int w90p910_enable_cam_command (struct net_device*) ;
 int w90p910_enable_mac_interrupt (struct net_device*) ;
 int w90p910_enable_rx (struct net_device*,int) ;
 int w90p910_reset_mac (struct net_device*) ;
 int w90p910_rx_interrupt ;
 int w90p910_set_curdest (struct net_device*) ;
 int w90p910_set_fifo_threshold (struct net_device*) ;
 int w90p910_set_global_maccmd (struct net_device*) ;
 int w90p910_trigger_rx (struct net_device*) ;
 int w90p910_tx_interrupt ;

__attribute__((used)) static int w90p910_ether_open(struct net_device *dev)
{
 struct w90p910_ether *ether;
 struct platform_device *pdev;

 ether = netdev_priv(dev);
 pdev = ether->pdev;

 w90p910_reset_mac(dev);
 w90p910_set_fifo_threshold(dev);
 w90p910_set_curdest(dev);
 w90p910_enable_cam(dev);
 w90p910_enable_cam_command(dev);
 w90p910_enable_mac_interrupt(dev);
 w90p910_set_global_maccmd(dev);
 w90p910_enable_rx(dev, 1);

 ether->rx_packets = 0x0;
 ether->rx_bytes = 0x0;

 if (request_irq(ether->txirq, w90p910_tx_interrupt,
      0x0, pdev->name, dev)) {
  dev_err(&pdev->dev, "register irq tx failed\n");
  return -EAGAIN;
 }

 if (request_irq(ether->rxirq, w90p910_rx_interrupt,
      0x0, pdev->name, dev)) {
  dev_err(&pdev->dev, "register irq rx failed\n");
  free_irq(ether->txirq, dev);
  return -EAGAIN;
 }

 mod_timer(&ether->check_timer, jiffies + msecs_to_jiffies(1000));
 netif_start_queue(dev);
 w90p910_trigger_rx(dev);

 dev_info(&pdev->dev, "%s is OPENED\n", dev->name);

 return 0;
}
