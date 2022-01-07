
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int CROLL ;
 int RSTC ;
 unsigned short RXCKS ;
 unsigned short RXDWA ;
 unsigned short bfin_read_EMAC_SYSCTL () ;
 int bfin_write_DMA1_X_COUNT (int ) ;
 int bfin_write_DMA1_X_MODIFY (int) ;
 int bfin_write_DMA1_Y_COUNT (int ) ;
 int bfin_write_DMA1_Y_MODIFY (int ) ;
 int bfin_write_DMA2_X_COUNT (int ) ;
 int bfin_write_DMA2_X_MODIFY (int) ;
 int bfin_write_DMA2_Y_COUNT (int ) ;
 int bfin_write_DMA2_Y_MODIFY (int ) ;
 int bfin_write_EMAC_MMC_CTL (int) ;
 int bfin_write_EMAC_SYSCTL (unsigned short) ;

void setup_system_regs(struct net_device *dev)
{
 unsigned short sysctl;





 sysctl = bfin_read_EMAC_SYSCTL();



 sysctl |= RXDWA;

 bfin_write_EMAC_SYSCTL(sysctl);

 bfin_write_EMAC_MMC_CTL(RSTC | CROLL);


 bfin_write_DMA2_X_COUNT(0);
 bfin_write_DMA2_X_MODIFY(4);
 bfin_write_DMA2_Y_COUNT(0);
 bfin_write_DMA2_Y_MODIFY(0);


 bfin_write_DMA1_X_COUNT(0);
 bfin_write_DMA1_X_MODIFY(4);
 bfin_write_DMA1_Y_COUNT(0);
 bfin_write_DMA1_Y_MODIFY(0);
}
