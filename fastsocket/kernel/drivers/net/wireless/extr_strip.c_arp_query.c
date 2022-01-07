
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int addr_len; } ;
struct neighbour {int nud_state; int ha; int used; } ;


 int NUD_VALID ;
 int arp_tbl ;
 int jiffies ;
 int memcpy (unsigned char*,int ,int ) ;
 struct neighbour* neigh_lookup (int *,int *,struct net_device*) ;
 int neigh_release (struct neighbour*) ;

__attribute__((used)) static int arp_query(unsigned char *haddr, u32 paddr,
       struct net_device *dev)
{
 struct neighbour *neighbor_entry;
 int ret = 0;

 neighbor_entry = neigh_lookup(&arp_tbl, &paddr, dev);

 if (neighbor_entry != ((void*)0)) {
  neighbor_entry->used = jiffies;
  if (neighbor_entry->nud_state & NUD_VALID) {
   memcpy(haddr, neighbor_entry->ha, dev->addr_len);
   ret = 1;
  }
  neigh_release(neighbor_entry);
 }
 return ret;
}
