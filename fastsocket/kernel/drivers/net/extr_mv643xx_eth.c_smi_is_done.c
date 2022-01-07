
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_shared_private {scalar_t__ base; } ;


 int SMI_BUSY ;
 scalar_t__ SMI_REG ;
 int readl (scalar_t__) ;

__attribute__((used)) static int smi_is_done(struct mv643xx_eth_shared_private *msp)
{
 return !(readl(msp->base + SMI_REG) & SMI_BUSY);
}
