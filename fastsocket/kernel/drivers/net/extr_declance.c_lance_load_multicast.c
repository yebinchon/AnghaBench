
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; scalar_t__ mem_start; } ;
struct lance_private {int type; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;


 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int ether_crc_le (int ,char*) ;
 int * filter ;
 int* lib_ptr (int volatile*,int ,int ) ;
 struct lance_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void lance_load_multicast(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile u16 *ib = (volatile u16 *)dev->mem_start;
 struct dev_mc_list *dmi = dev->mc_list;
 char *addrs;
 int i;
 u32 crc;


 if (dev->flags & IFF_ALLMULTI) {
  *lib_ptr(ib, filter[0], lp->type) = 0xffff;
  *lib_ptr(ib, filter[1], lp->type) = 0xffff;
  *lib_ptr(ib, filter[2], lp->type) = 0xffff;
  *lib_ptr(ib, filter[3], lp->type) = 0xffff;
  return;
 }

 *lib_ptr(ib, filter[0], lp->type) = 0;
 *lib_ptr(ib, filter[1], lp->type) = 0;
 *lib_ptr(ib, filter[2], lp->type) = 0;
 *lib_ptr(ib, filter[3], lp->type) = 0;


 for (i = 0; i < dev->mc_count; i++) {
  addrs = dmi->dmi_addr;
  dmi = dmi->next;


  if (!(*addrs & 1))
   continue;

  crc = ether_crc_le(ETH_ALEN, addrs);
  crc = crc >> 26;
  *lib_ptr(ib, filter[crc >> 4], lp->type) |= 1 << (crc & 0xf);
 }
 return;
}
