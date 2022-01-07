
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct net_device {int mc_count; scalar_t__ dev_addr; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {scalar_t__ dmi_addr; struct dev_mc_list* next; } ;
struct de_private {void** setup_frame; } ;


 int memset (void**,int,int) ;
 struct de_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void build_setup_frame_perfect(u16 *setup_frm, struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);
 struct dev_mc_list *mclist;
 int i;
 u16 *eaddrs;



 for (i = 0, mclist = dev->mc_list; i < dev->mc_count;
      i++, mclist = mclist->next) {
  eaddrs = (u16 *)mclist->dmi_addr;
  *setup_frm++ = *eaddrs; *setup_frm++ = *eaddrs++;
  *setup_frm++ = *eaddrs; *setup_frm++ = *eaddrs++;
  *setup_frm++ = *eaddrs; *setup_frm++ = *eaddrs++;
 }

 memset(setup_frm, 0xff, (15-i)*12);
 setup_frm = &de->setup_frame[15*6];


 eaddrs = (u16 *)dev->dev_addr;
 *setup_frm++ = eaddrs[0]; *setup_frm++ = eaddrs[0];
 *setup_frm++ = eaddrs[1]; *setup_frm++ = eaddrs[1];
 *setup_frm++ = eaddrs[2]; *setup_frm++ = eaddrs[2];
}
