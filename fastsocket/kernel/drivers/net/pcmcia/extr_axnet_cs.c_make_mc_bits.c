
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;


 int ETH_ALEN ;
 int ether_crc (int ,int ) ;

__attribute__((used)) static inline void make_mc_bits(u8 *bits, struct net_device *dev)
{
 struct dev_mc_list *dmi;
 u32 crc;

 for (dmi=dev->mc_list; dmi; dmi=dmi->next) {

  crc = ether_crc(ETH_ALEN, dmi->dmi_addr);




  bits[crc>>29] |= (1<<((crc>>26)&7));
 }
}
