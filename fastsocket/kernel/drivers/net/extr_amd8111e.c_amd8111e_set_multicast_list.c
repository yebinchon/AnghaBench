
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
struct amd8111e_priv {scalar_t__ mmio; struct dev_mc_list* mc_list; int options; } ;


 scalar_t__ CMD2 ;
 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ LADRF ;
 int MAX_FILTER_SIZE ;
 int OPTION_MULTICAST_ENABLE ;
 int PROM ;
 int VAL2 ;
 int amd8111e_writeq (int ,scalar_t__) ;
 int ether_crc_le (int ,int ) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void amd8111e_set_multicast_list(struct net_device *dev)
{
 struct dev_mc_list* mc_ptr;
 struct amd8111e_priv *lp = netdev_priv(dev);
 u32 mc_filter[2] ;
 int i,bit_num;
 if(dev->flags & IFF_PROMISC){
  writel( VAL2 | PROM, lp->mmio + CMD2);
  return;
 }
 else
  writel( PROM, lp->mmio + CMD2);
 if(dev->flags & IFF_ALLMULTI || dev->mc_count > MAX_FILTER_SIZE){

  mc_filter[1] = mc_filter[0] = 0xffffffff;
  lp->mc_list = dev->mc_list;
  lp->options |= OPTION_MULTICAST_ENABLE;
  amd8111e_writeq(*(u64*)mc_filter,lp->mmio + LADRF);
  return;
 }
 if( dev->mc_count == 0 ){

  mc_filter[1] = mc_filter[0] = 0;
  lp->mc_list = ((void*)0);
  lp->options &= ~OPTION_MULTICAST_ENABLE;
  amd8111e_writeq(*(u64*)mc_filter,lp->mmio + LADRF);

  writel(PROM, lp->mmio + CMD2);
  return;
 }

 lp->options |= OPTION_MULTICAST_ENABLE;
 lp->mc_list = dev->mc_list;
 mc_filter[1] = mc_filter[0] = 0;
 for (i = 0, mc_ptr = dev->mc_list; mc_ptr && i < dev->mc_count;
       i++, mc_ptr = mc_ptr->next) {
  bit_num = (ether_crc_le(ETH_ALEN, mc_ptr->dmi_addr) >> 26) & 0x3f;
  mc_filter[bit_num >> 5] |= 1 << (bit_num & 31);
 }
 amd8111e_writeq(*(u64*)mc_filter,lp->mmio+ LADRF);


 readl(lp->mmio + CMD2);

}
