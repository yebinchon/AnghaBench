
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapbethdev {int axdev; int node; int ethdev; } ;


 int dev_put (int ) ;
 int list_del_rcu (int *) ;
 int unregister_netdevice (int ) ;

__attribute__((used)) static void lapbeth_free_device(struct lapbethdev *lapbeth)
{
 dev_put(lapbeth->ethdev);
 list_del_rcu(&lapbeth->node);
 unregister_netdevice(lapbeth->axdev);
}
