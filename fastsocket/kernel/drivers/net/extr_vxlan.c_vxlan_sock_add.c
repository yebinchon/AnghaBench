
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vxlan_rcv_t ;
struct vxlan_sock {int refcnt; int * rcv; } ;
struct vxlan_net {int sock_lock; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 int EBUSY ;
 int EINVAL ;
 struct vxlan_sock* ERR_PTR (int ) ;
 int IS_ERR (struct vxlan_sock*) ;
 int atomic_inc (int *) ;
 struct vxlan_net* net_generic (struct net*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vxlan_sock* vxlan_find_sock (struct net*,int ) ;
 int vxlan_net_id ;
 struct vxlan_sock* vxlan_socket_create (struct net*,int ,int *,void*) ;

struct vxlan_sock *vxlan_sock_add(struct net *net, __be16 port,
      vxlan_rcv_t *rcv, void *data,
      bool no_share)
{
 struct vxlan_net *vn = net_generic(net, vxlan_net_id);
 struct vxlan_sock *vs;

 vs = vxlan_socket_create(net, port, rcv, data);
 if (!IS_ERR(vs))
  return vs;

 if (no_share)
  return vs;

 spin_lock(&vn->sock_lock);
 vs = vxlan_find_sock(net, port);
 if (vs) {
  if (vs->rcv == rcv)
   atomic_inc(&vs->refcnt);
  else
   vs = ERR_PTR(-EBUSY);
 }
 spin_unlock(&vn->sock_lock);

 if (!vs)
  vs = ERR_PTR(-EINVAL);

 return vs;
}
