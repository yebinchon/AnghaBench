
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AT91_EMAC_DATA ;
 int AT91_EMAC_MAN ;
 unsigned char AT91_EMAC_MAN_802_3 ;
 unsigned char AT91_EMAC_RW_R ;
 unsigned int at91_emac_read (int ) ;
 int at91_emac_write (int ,unsigned char) ;
 int at91_phy_wait () ;

__attribute__((used)) static void read_phy(unsigned char phy_addr, unsigned char address, unsigned int *value)
{
 at91_emac_write(AT91_EMAC_MAN, AT91_EMAC_MAN_802_3 | AT91_EMAC_RW_R
  | ((phy_addr & 0x1f) << 23) | (address << 18));


 at91_phy_wait();

 *value = at91_emac_read(AT91_EMAC_MAN) & AT91_EMAC_DATA;
}
