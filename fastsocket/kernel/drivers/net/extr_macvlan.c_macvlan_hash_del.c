
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvlan_dev {int hlist; } ;


 int hlist_del_rcu (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void macvlan_hash_del(struct macvlan_dev *vlan)
{
 hlist_del_rcu(&vlan->hlist);
 synchronize_rcu();
}
