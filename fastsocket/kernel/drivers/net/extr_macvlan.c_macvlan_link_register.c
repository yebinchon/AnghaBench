
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int priv_size; int fill_info; int get_size; int changelink; int policy; int maxtype; int validate; int get_tx_queues; } ;
struct macvlan_dev {int dummy; } ;


 int IFLA_MACVLAN_MAX ;
 int macvlan_changelink ;
 int macvlan_fill_info ;
 int macvlan_get_size ;
 int macvlan_get_tx_queues ;
 int macvlan_policy ;
 int macvlan_validate ;
 int rtnl_link_register (struct rtnl_link_ops*) ;

int macvlan_link_register(struct rtnl_link_ops *ops)
{

 ops->priv_size = sizeof(struct macvlan_dev);
 ops->get_tx_queues = macvlan_get_tx_queues;
 ops->validate = macvlan_validate;
 ops->maxtype = IFLA_MACVLAN_MAX;
 ops->policy = macvlan_policy;
 ops->changelink = macvlan_changelink;
 ops->get_size = macvlan_get_size;
 ops->fill_info = macvlan_fill_info;

 return rtnl_link_register(ops);
}
