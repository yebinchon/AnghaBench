
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvtap_queue {int sk; int vlan; } ;
struct macvlan_dev {int tap; } ;


 int rcu_assign_pointer (int ,int *) ;
 struct macvlan_dev* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sock_put (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void macvtap_put_queue(struct macvtap_queue *q)
{
 struct macvlan_dev *vlan;

 rtnl_lock();
 vlan = rtnl_dereference(q->vlan);
 if (vlan) {
  rcu_assign_pointer(vlan->tap, ((void*)0));
  rcu_assign_pointer(q->vlan, ((void*)0));
  sock_put(&q->sk);
 }

 rtnl_unlock();

 synchronize_rcu();
 sock_put(&q->sk);
}
