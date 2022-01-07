
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int writel (unsigned long,unsigned long) ;

__attribute__((used)) static inline void stmmac_set_mac_addr(unsigned long ioaddr, u8 addr[6],
    unsigned int high, unsigned int low)
{
 unsigned long data;

 data = (addr[5] << 8) | addr[4];
 writel(data, ioaddr + high);
 data = (addr[3] << 24) | (addr[2] << 16) | (addr[1] << 8) | addr[0];
 writel(data, ioaddr + low);

 return;
}
