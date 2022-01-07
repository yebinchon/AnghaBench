
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;
struct net_device {unsigned int base_addr; int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
typedef int mc_filter ;


 int CONFIG0_RST ;
 int CONFIG0_RST_1 ;
 scalar_t__ CONFIG_0 ;
 scalar_t__ CONFIG_1 ;
 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ MAR_ADR ;
 scalar_t__ MC_FILTERBREAK ;
 scalar_t__ RX_MODE ;
 int ether_crc_le (int ,int ) ;
 int inb (scalar_t__) ;
 int local_irq_restore (int ) ;
 int local_irq_save (int ) ;
 int memset (int*,int,int) ;
 int outb (int,scalar_t__) ;
 scalar_t__ sram_config ;

__attribute__((used)) static void set_rx_mode(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    u_char mc_filter[8];
    u_long flags;
    int i;

    int saved_bank;
    int saved_config_0 = inb(ioaddr + CONFIG_0);

    local_irq_save(flags);


    if (sram_config == 0)
 outb(CONFIG0_RST, ioaddr + CONFIG_0);
    else
 outb(CONFIG0_RST_1, ioaddr + CONFIG_0);

    if (dev->flags & IFF_PROMISC) {
 memset(mc_filter, 0xff, sizeof(mc_filter));
 outb(3, ioaddr + RX_MODE);
    } else if (dev->mc_count > MC_FILTERBREAK
        || (dev->flags & IFF_ALLMULTI)) {

 memset(mc_filter, 0xff, sizeof(mc_filter));
 outb(2, ioaddr + RX_MODE);
    } else if (dev->mc_count == 0) {
 memset(mc_filter, 0x00, sizeof(mc_filter));
 outb(1, ioaddr + RX_MODE);
    } else {
 struct dev_mc_list *mclist;

 memset(mc_filter, 0, sizeof(mc_filter));
 for (i = 0, mclist = dev->mc_list; mclist && i < dev->mc_count;
      i++, mclist = mclist->next) {
     unsigned int bit =
      ether_crc_le(ETH_ALEN, mclist->dmi_addr) >> 26;
     mc_filter[bit >> 3] |= (1 << (bit & 7));
 }
 outb(2, ioaddr + RX_MODE);
    }


    saved_bank = inb(ioaddr + CONFIG_1);
    outb(0xe4, ioaddr + CONFIG_1);

    for (i = 0; i < 8; i++)
 outb(mc_filter[i], ioaddr + MAR_ADR + i);
    outb(saved_bank, ioaddr + CONFIG_1);

    outb(saved_config_0, ioaddr + CONFIG_0);

    local_irq_restore(flags);
}
