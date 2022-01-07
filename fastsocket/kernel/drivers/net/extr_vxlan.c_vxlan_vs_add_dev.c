
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_sock {int dummy; } ;
struct TYPE_2__ {int remote_vni; } ;
struct vxlan_dev {int hlist; struct vxlan_sock* vn_sock; TYPE_1__ default_dst; } ;
typedef int __u32 ;


 int hlist_add_head_rcu (int *,int ) ;
 int vni_head (struct vxlan_sock*,int ) ;

__attribute__((used)) static void vxlan_vs_add_dev(struct vxlan_sock *vs, struct vxlan_dev *vxlan)
{
 __u32 vni = vxlan->default_dst.remote_vni;

 vxlan->vn_sock = vs;
 hlist_add_head_rcu(&vxlan->hlist, vni_head(vs, vni));
}
