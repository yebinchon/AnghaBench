
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct net_device {int mem_start; int base_addr; } ;


 int free_netdev (struct net_device*) ;
 struct net_device* pnp_get_drvdata (struct pnp_dev*) ;
 int release_region (int ,int) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
sb1000_remove_one(struct pnp_dev *pdev)
{
 struct net_device *dev = pnp_get_drvdata(pdev);

 unregister_netdev(dev);
 release_region(dev->base_addr, 16);
 release_region(dev->mem_start, 16);
 free_netdev(dev);
}
