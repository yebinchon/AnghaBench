
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETH_P_8021Q ;
 scalar_t__ MAC_CONTROL ;
 int MAC_CORE_INIT ;
 scalar_t__ MAC_VLAN1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mac100_core_init(unsigned long ioaddr)
{
 u32 value = readl(ioaddr + MAC_CONTROL);

 writel((value | MAC_CORE_INIT), ioaddr + MAC_CONTROL);




 return;
}
