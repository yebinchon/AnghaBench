
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MIIMU_DATA (int) ;
 int MIIMU_OPMODE_WRITE ;
 int MIIMU_PHYADDR (int) ;
 int MIIMU_PHY_NRES ;
 int MIIMU_PREAMBLE ;
 int MIIMU_REGADDR (int) ;
 int MIIMU_SNRDY ;
 int NETX_MIIMU ;
 int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void
netx_eth_phy_write(struct net_device *ndev, int phy_id, int reg, int value)
{
 unsigned int val;

 val = MIIMU_SNRDY | MIIMU_PREAMBLE | MIIMU_PHYADDR(phy_id) |
       MIIMU_REGADDR(reg) | MIIMU_PHY_NRES | MIIMU_OPMODE_WRITE |
       MIIMU_DATA(value);

 writel(val, NETX_MIIMU);
 while (readl(NETX_MIIMU) & MIIMU_SNRDY);
}
