
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_mcast_entry {int hit; struct vnet_mcast_entry* next; int addr; } ;
struct vnet {struct vnet_mcast_entry* mcast_list; } ;
struct net_device {struct dev_addr_list* mc_list; } ;
struct dev_addr_list {int dmi_addr; struct dev_addr_list* next; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 struct vnet_mcast_entry* __vnet_mc_find (struct vnet*,int ) ;
 struct vnet_mcast_entry* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void __update_mc_list(struct vnet *vp, struct net_device *dev)
{
 struct dev_addr_list *p;

 for (p = dev->mc_list; p; p = p->next) {
  struct vnet_mcast_entry *m;

  m = __vnet_mc_find(vp, p->dmi_addr);
  if (m) {
   m->hit = 1;
   continue;
  }

  if (!m) {
   m = kzalloc(sizeof(*m), GFP_ATOMIC);
   if (!m)
    continue;
   memcpy(m->addr, p->dmi_addr, ETH_ALEN);
   m->hit = 1;

   m->next = vp->mcast_list;
   vp->mcast_list = m;
  }
 }
}
