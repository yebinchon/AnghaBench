
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unit_directory {int device; } ;
struct eth1394_priv {int ip_node_list; } ;
struct eth1394_node_ref {int list; struct unit_directory* ud; } ;
struct TYPE_2__ {scalar_t__ sz; int list; int lock; } ;
struct eth1394_node_info {int fifo; TYPE_1__ pdg; } ;
struct eth1394_host_info {int dev; } ;


 int CSR1212_INVALID_ADDR_SPACE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (int *,struct eth1394_node_info*) ;
 int kfree (struct eth1394_node_ref*) ;
 void* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct eth1394_priv* netdev_priv (int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int eth1394_new_node(struct eth1394_host_info *hi,
       struct unit_directory *ud)
{
 struct eth1394_priv *priv;
 struct eth1394_node_ref *new_node;
 struct eth1394_node_info *node_info;

 new_node = kmalloc(sizeof(*new_node), GFP_KERNEL);
 if (!new_node)
  return -ENOMEM;

 node_info = kmalloc(sizeof(*node_info), GFP_KERNEL);
 if (!node_info) {
  kfree(new_node);
  return -ENOMEM;
 }

 spin_lock_init(&node_info->pdg.lock);
 INIT_LIST_HEAD(&node_info->pdg.list);
 node_info->pdg.sz = 0;
 node_info->fifo = CSR1212_INVALID_ADDR_SPACE;

 dev_set_drvdata(&ud->device, node_info);
 new_node->ud = ud;

 priv = netdev_priv(hi->dev);
 list_add_tail(&new_node->list, &priv->ip_node_list);
 return 0;
}
