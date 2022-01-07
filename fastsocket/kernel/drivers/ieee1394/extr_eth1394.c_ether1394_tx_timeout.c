
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct hpsb_host {int dummy; } ;
struct eth1394_priv {struct hpsb_host* host; } ;


 int ETH1394_PRINT (int ,int ,char*) ;
 int KERN_ERR ;
 int ether1394_host_reset (struct hpsb_host*) ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static void ether1394_tx_timeout(struct net_device *dev)
{
 struct hpsb_host *host =
   ((struct eth1394_priv *)netdev_priv(dev))->host;

 ETH1394_PRINT(KERN_ERR, dev->name, "Timeout, resetting host\n");
 ether1394_host_reset(host);
}
