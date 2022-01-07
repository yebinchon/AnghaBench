
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_dev {struct hlist_head* fdb_head; } ;
struct hlist_head {int dummy; } ;


 size_t eth_hash (int const*) ;

__attribute__((used)) static inline struct hlist_head *vxlan_fdb_head(struct vxlan_dev *vxlan,
      const u8 *mac)
{
 return &vxlan->fdb_head[eth_hash(mac)];
}
