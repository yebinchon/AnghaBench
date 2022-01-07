
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_sock {int del_work; int hlist; int refcnt; TYPE_1__* sock; } ;
struct vxlan_net {int sock_lock; } ;
struct TYPE_2__ {int sk; } ;


 int atomic_dec_and_test (int *) ;
 int hlist_del_rcu (int *) ;
 struct vxlan_net* net_generic (int ,int ) ;
 int queue_work (int ,int *) ;
 int sock_net (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vxlan_net_id ;
 int vxlan_wq ;

void vxlan_sock_release(struct vxlan_sock *vs)
{
 struct vxlan_net *vn = net_generic(sock_net(vs->sock->sk), vxlan_net_id);

 if (!atomic_dec_and_test(&vs->refcnt))
  return;

 spin_lock(&vn->sock_lock);
 hlist_del_rcu(&vs->hlist);
 spin_unlock(&vn->sock_lock);

 queue_work(vxlan_wq, &vs->del_work);
}
