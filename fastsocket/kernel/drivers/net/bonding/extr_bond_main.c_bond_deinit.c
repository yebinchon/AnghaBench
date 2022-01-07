
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bonding {int bond_list; } ;


 int bond_remove_proc_entry (struct bonding*) ;
 int bond_work_cancel_all (struct bonding*) ;
 int list_del (int *) ;
 struct bonding* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bond_deinit(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);

 list_del(&bond->bond_list);

 bond_work_cancel_all(bond);

 bond_remove_proc_entry(bond);
}
