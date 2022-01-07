
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxlan_sock {struct hlist_head* vni_list; } ;
struct hlist_head {int dummy; } ;


 int VNI_HASH_BITS ;
 size_t hash_32 (int ,int ) ;

__attribute__((used)) static inline struct hlist_head *vni_head(struct vxlan_sock *vs, u32 id)
{
 return &vs->vni_list[hash_32(id, VNI_HASH_BITS)];
}
