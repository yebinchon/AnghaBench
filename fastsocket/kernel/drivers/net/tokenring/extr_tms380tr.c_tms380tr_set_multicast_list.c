
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int OPENOptions; int FunctAddr; } ;
struct net_local {TYPE_1__ ocpl; } ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;


 unsigned int COPY_ALL_MAC_FRAMES ;
 unsigned int COPY_ALL_NON_MAC_FRAMES ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int OC_MODIFY_OPEN_PARMS ;
 int OC_SET_FUNCT_ADDR ;
 unsigned int PASS_ADAPTER_MAC_FRAMES ;
 unsigned int PASS_ATTENTION_FRAMES ;
 unsigned int PASS_BEACON_MAC_FRAMES ;
 struct net_local* netdev_priv (struct net_device*) ;
 int tms380tr_exec_cmd (struct net_device*,int ) ;

__attribute__((used)) static void tms380tr_set_multicast_list(struct net_device *dev)
{
 struct net_local *tp = netdev_priv(dev);
 unsigned int OpenOptions;

 OpenOptions = tp->ocpl.OPENOptions &
  ~(PASS_ADAPTER_MAC_FRAMES
    | PASS_ATTENTION_FRAMES
    | PASS_BEACON_MAC_FRAMES
    | COPY_ALL_MAC_FRAMES
    | COPY_ALL_NON_MAC_FRAMES);

 tp->ocpl.FunctAddr = 0;

 if(dev->flags & IFF_PROMISC)

  OpenOptions |= COPY_ALL_NON_MAC_FRAMES |
   COPY_ALL_MAC_FRAMES;
 else
 {
  if(dev->flags & IFF_ALLMULTI)
  {

   tp->ocpl.FunctAddr = 0xFFFFFFFF;
  }
  else
  {
   int i;
   struct dev_mc_list *mclist = dev->mc_list;
   for (i=0; i< dev->mc_count; i++)
   {
    ((char *)(&tp->ocpl.FunctAddr))[0] |=
     mclist->dmi_addr[2];
    ((char *)(&tp->ocpl.FunctAddr))[1] |=
     mclist->dmi_addr[3];
    ((char *)(&tp->ocpl.FunctAddr))[2] |=
     mclist->dmi_addr[4];
    ((char *)(&tp->ocpl.FunctAddr))[3] |=
     mclist->dmi_addr[5];
    mclist = mclist->next;
   }
  }
  tms380tr_exec_cmd(dev, OC_SET_FUNCT_ADDR);
 }

 tp->ocpl.OPENOptions = OpenOptions;
 tms380tr_exec_cmd(dev, OC_MODIFY_OPEN_PARMS);
 return;
}
