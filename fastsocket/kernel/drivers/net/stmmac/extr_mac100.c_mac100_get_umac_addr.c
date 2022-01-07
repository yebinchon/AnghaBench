
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAC_ADDR_HIGH ;
 int MAC_ADDR_LOW ;
 int stmmac_get_mac_addr (unsigned long,unsigned char*,int ,int ) ;

__attribute__((used)) static void mac100_get_umac_addr(unsigned long ioaddr, unsigned char *addr,
     unsigned int reg_n)
{
 stmmac_get_mac_addr(ioaddr, addr, MAC_ADDR_HIGH, MAC_ADDR_LOW);
}
