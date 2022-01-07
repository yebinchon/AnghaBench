
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnet_mcast_entry {int addr; struct vnet_mcast_entry* next; } ;
struct vnet {struct vnet_mcast_entry* mcast_list; } ;


 int ETH_ALEN ;
 int memcmp (int ,int *,int ) ;

__attribute__((used)) static struct vnet_mcast_entry *__vnet_mc_find(struct vnet *vp, u8 *addr)
{
 struct vnet_mcast_entry *m;

 for (m = vp->mcast_list; m; m = m->next) {
  if (!memcmp(m->addr, addr, ETH_ALEN))
   return m;
 }
 return ((void*)0);
}
