
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int readl (unsigned long) ;

__attribute__((used)) static inline void stmmac_get_mac_addr(unsigned long ioaddr,
    unsigned char *addr, unsigned int high,
    unsigned int low)
{
 unsigned int hi_addr, lo_addr;


 hi_addr = readl(ioaddr + high);
 lo_addr = readl(ioaddr + low);


 addr[0] = lo_addr & 0xff;
 addr[1] = (lo_addr >> 8) & 0xff;
 addr[2] = (lo_addr >> 16) & 0xff;
 addr[3] = (lo_addr >> 24) & 0xff;
 addr[4] = hi_addr & 0xff;
 addr[5] = (hi_addr >> 8) & 0xff;

 return;
}
