
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GMAC_ADDR_HIGH (unsigned int) ;
 int GMAC_ADDR_LOW (unsigned int) ;
 int stmmac_set_mac_addr (unsigned long,unsigned char*,int ,int ) ;

__attribute__((used)) static void gmac_set_umac_addr(unsigned long ioaddr, unsigned char *addr,
    unsigned int reg_n)
{
 stmmac_set_mac_addr(ioaddr, addr, GMAC_ADDR_HIGH(reg_n),
    GMAC_ADDR_LOW(reg_n));
}
