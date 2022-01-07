
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct t1_rx_mode {int dummy; } ;
struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int enabled; } ;


 int ETH_ALEN ;
 int MAC_DIRECTION_RX ;
 int SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN ;
 int SUNI1x10GEXP_BITMSK_RXXG_PMODE ;
 int SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2 ;
 int SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH ;
 int SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW ;
 int SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH ;
 int SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW ;
 int ether_crc (int ,int *) ;
 int pm3393_disable (struct cmac*,int) ;
 int pm3393_enable (struct cmac*,int) ;
 int pmread (struct cmac*,int ,int*) ;
 int pmwrite (struct cmac*,int ,int) ;
 int * t1_get_next_mcaddr (struct t1_rx_mode*) ;
 scalar_t__ t1_rx_mode_allmulti (struct t1_rx_mode*) ;
 scalar_t__ t1_rx_mode_mc_cnt (struct t1_rx_mode*) ;
 scalar_t__ t1_rx_mode_promisc (struct t1_rx_mode*) ;

__attribute__((used)) static int pm3393_set_rx_mode(struct cmac *cmac, struct t1_rx_mode *rm)
{
 int enabled = cmac->instance->enabled & MAC_DIRECTION_RX;
 u32 rx_mode;


 if (enabled)
  pm3393_disable(cmac, MAC_DIRECTION_RX);

 pmread(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2, &rx_mode);
 rx_mode &= ~(SUNI1x10GEXP_BITMSK_RXXG_PMODE |
       SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN);
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2,
  (u16)rx_mode);

 if (t1_rx_mode_promisc(rm)) {

  rx_mode |= SUNI1x10GEXP_BITMSK_RXXG_PMODE;
 }
 if (t1_rx_mode_allmulti(rm)) {

  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW, 0xffff);
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW, 0xffff);
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH, 0xffff);
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH, 0xffff);
  rx_mode |= SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN;
 } else if (t1_rx_mode_mc_cnt(rm)) {

  u8 *addr;
  int bit;
  u16 mc_filter[4] = { 0, };

  while ((addr = t1_get_next_mcaddr(rm))) {
   bit = (ether_crc(ETH_ALEN, addr) >> 23) & 0x3f;
   mc_filter[bit >> 4] |= 1 << (bit & 0xf);
  }
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW, mc_filter[0]);
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW, mc_filter[1]);
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH, mc_filter[2]);
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH, mc_filter[3]);
  rx_mode |= SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN;
 }

 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2, (u16)rx_mode);

 if (enabled)
  pm3393_enable(cmac, MAC_DIRECTION_RX);

 return 0;
}
