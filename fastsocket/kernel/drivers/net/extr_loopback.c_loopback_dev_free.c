
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_lstats {int dummy; } ;
struct net_device {struct pcpu_lstats* ml_priv; } ;


 int free_netdev (struct net_device*) ;
 int free_percpu (struct pcpu_lstats*) ;

__attribute__((used)) static void loopback_dev_free(struct net_device *dev)
{
 struct pcpu_lstats *lstats = dev->ml_priv;

 free_percpu(lstats);
 free_netdev(dev);
}
