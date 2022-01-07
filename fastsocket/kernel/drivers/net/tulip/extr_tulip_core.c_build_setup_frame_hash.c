
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct tulip_private {void** setup_frame; } ;
struct net_device {int mc_count; scalar_t__ dev_addr; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
typedef int hash_table ;


 int ETH_ALEN ;
 int ether_crc_le (int ,int ) ;
 int memset (void**,int ,int) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int set_bit_le (int,void**) ;

__attribute__((used)) static void build_setup_frame_hash(u16 *setup_frm, struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 u16 hash_table[32];
 struct dev_mc_list *mclist;
 int i;
 u16 *eaddrs;

 memset(hash_table, 0, sizeof(hash_table));
 set_bit_le(255, hash_table);

 for (i = 0, mclist = dev->mc_list; mclist && i < dev->mc_count;
      i++, mclist = mclist->next) {
  int index = ether_crc_le(ETH_ALEN, mclist->dmi_addr) & 0x1ff;

  set_bit_le(index, hash_table);

 }
 for (i = 0; i < 32; i++) {
  *setup_frm++ = hash_table[i];
  *setup_frm++ = hash_table[i];
 }
 setup_frm = &tp->setup_frame[13*6];


 eaddrs = (u16 *)dev->dev_addr;
 *setup_frm++ = eaddrs[0]; *setup_frm++ = eaddrs[0];
 *setup_frm++ = eaddrs[1]; *setup_frm++ = eaddrs[1];
 *setup_frm++ = eaddrs[2]; *setup_frm++ = eaddrs[2];
}
