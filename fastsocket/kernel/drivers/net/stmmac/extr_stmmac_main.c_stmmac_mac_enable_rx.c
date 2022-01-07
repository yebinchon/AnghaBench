
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MAC_CTRL_REG ;
 int MAC_RNABLE_RX ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void stmmac_mac_enable_rx(unsigned long ioaddr)
{
 u32 value = readl(ioaddr + MAC_CTRL_REG);
 value |= MAC_RNABLE_RX;

 writel(value, ioaddr + MAC_CTRL_REG);
}
