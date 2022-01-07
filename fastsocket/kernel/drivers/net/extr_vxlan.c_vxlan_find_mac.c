
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_fdb {int used; } ;
struct vxlan_dev {int dummy; } ;


 struct vxlan_fdb* __vxlan_find_mac (struct vxlan_dev*,int const*) ;
 int jiffies ;

__attribute__((used)) static struct vxlan_fdb *vxlan_find_mac(struct vxlan_dev *vxlan,
     const u8 *mac)
{
 struct vxlan_fdb *f;

 f = __vxlan_find_mac(vxlan, mac);
 if (f)
  f->used = jiffies;

 return f;
}
