
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxlan_sock {int dummy; } ;
struct vxlan_dev {int dummy; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 struct vxlan_sock* vxlan_find_sock (struct net*,int ) ;
 struct vxlan_dev* vxlan_vs_find_vni (struct vxlan_sock*,int ) ;

__attribute__((used)) static struct vxlan_dev *vxlan_find_vni(struct net *net, u32 id, __be16 port)
{
 struct vxlan_sock *vs;

 vs = vxlan_find_sock(net, port);
 if (!vs)
  return ((void*)0);

 return vxlan_vs_find_vni(vs, id);
}
