
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_rdst {int list; void* remote_ifindex; void* remote_vni; int remote_port; int remote_ip; } ;
struct vxlan_fdb {int remotes; } ;
typedef void* __u32 ;
typedef int __be32 ;
typedef int __be16 ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 struct vxlan_rdst* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 struct vxlan_rdst* vxlan_fdb_find_rdst (struct vxlan_fdb*,int ,int ,void*,void*) ;

__attribute__((used)) static int vxlan_fdb_append(struct vxlan_fdb *f,
       __be32 ip, __be16 port, __u32 vni, __u32 ifindex)
{
 struct vxlan_rdst *rd;

 rd = vxlan_fdb_find_rdst(f, ip, port, vni, ifindex);
 if (rd)
  return 0;

 rd = kmalloc(sizeof(*rd), GFP_ATOMIC);
 if (rd == ((void*)0))
  return -ENOBUFS;
 rd->remote_ip = ip;
 rd->remote_port = port;
 rd->remote_vni = vni;
 rd->remote_ifindex = ifindex;

 list_add_tail_rcu(&rd->list, &f->remotes);

 return 1;
}
