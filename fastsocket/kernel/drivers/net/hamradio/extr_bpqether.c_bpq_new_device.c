
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct bpqdev {int bpq_list; int acpt_addr; int dest_addr; struct net_device* axdev; struct net_device* ethdev; } ;
typedef int bpq_eth_addr ;


 int ENOMEM ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 int bcast_addr ;
 int bpq_devices ;
 int bpq_set_lockdep_class (struct net_device*) ;
 int bpq_setup ;
 int dev_alloc_name (struct net_device*,int ) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int list_add_rcu (int *,int *) ;
 int memcpy (int ,int ,int) ;
 struct bpqdev* netdev_priv (struct net_device*) ;
 int register_netdevice (struct net_device*) ;

__attribute__((used)) static int bpq_new_device(struct net_device *edev)
{
 int err;
 struct net_device *ndev;
 struct bpqdev *bpq;

 ndev = alloc_netdev(sizeof(struct bpqdev), "bpq%d",
      bpq_setup);
 if (!ndev)
  return -ENOMEM;


 bpq = netdev_priv(ndev);
 dev_hold(edev);
 bpq->ethdev = edev;
 bpq->axdev = ndev;

 memcpy(bpq->dest_addr, bcast_addr, sizeof(bpq_eth_addr));
 memcpy(bpq->acpt_addr, bcast_addr, sizeof(bpq_eth_addr));

 err = dev_alloc_name(ndev, ndev->name);
 if (err < 0)
  goto error;

 err = register_netdevice(ndev);
 if (err)
  goto error;
 bpq_set_lockdep_class(ndev);


 list_add_rcu(&bpq->bpq_list, &bpq_devices);
 return 0;

 error:
 dev_put(edev);
 free_netdev(ndev);
 return err;

}
