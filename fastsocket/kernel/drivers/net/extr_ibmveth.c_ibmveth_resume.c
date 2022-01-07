
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int ibmveth_interrupt (int ,struct net_device*) ;

__attribute__((used)) static int ibmveth_resume(struct device *dev)
{
 struct net_device *netdev = dev_get_drvdata(dev);
 ibmveth_interrupt(netdev->irq, netdev);
 return 0;
}
