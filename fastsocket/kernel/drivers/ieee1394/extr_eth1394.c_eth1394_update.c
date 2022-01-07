
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unit_directory {TYPE_1__* ne; } ;
struct eth1394_priv {int ip_node_list; } ;
struct eth1394_node_ref {int dummy; } ;
struct eth1394_host_info {int dev; } ;
struct TYPE_2__ {int host; } ;


 int ENOENT ;
 struct eth1394_node_ref* eth1394_find_node (int *,struct unit_directory*) ;
 int eth1394_highlevel ;
 int eth1394_new_node (struct eth1394_host_info*,struct unit_directory*) ;
 struct eth1394_host_info* hpsb_get_hostinfo (int *,int ) ;
 struct eth1394_priv* netdev_priv (int ) ;

__attribute__((used)) static int eth1394_update(struct unit_directory *ud)
{
 struct eth1394_host_info *hi;
 struct eth1394_priv *priv;
 struct eth1394_node_ref *node;

 hi = hpsb_get_hostinfo(&eth1394_highlevel, ud->ne->host);
 if (!hi)
  return -ENOENT;

 priv = netdev_priv(hi->dev);
 node = eth1394_find_node(&priv->ip_node_list, ud);
 if (node)
  return 0;

 return eth1394_new_node(hi, ud);
}
