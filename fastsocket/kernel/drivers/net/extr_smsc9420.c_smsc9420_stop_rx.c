
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc9420_pdata {int dummy; } ;


 int DMAC_CONTROL ;
 int DMAC_CONTROL_SR_ ;
 int DMAC_INTR_ENA ;
 int DMAC_INTR_ENA_RX_ ;
 int DMAC_STATUS ;
 int DMAC_STS_RS_ ;
 int DMAC_STS_RXPS_ ;
 int IFDOWN ;
 int MAC_CR ;
 int MAC_CR_RXEN_ ;
 int smsc9420_pci_flush_write (struct smsc9420_pdata*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int smsc_warn (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void smsc9420_stop_rx(struct smsc9420_pdata *pd)
{
 int timeout = 1000;
 u32 mac_cr, dmac_control, dma_intr_ena;


 dma_intr_ena = smsc9420_reg_read(pd, DMAC_INTR_ENA);
 dma_intr_ena &= (~DMAC_INTR_ENA_RX_);
 smsc9420_reg_write(pd, DMAC_INTR_ENA, dma_intr_ena);
 smsc9420_pci_flush_write(pd);


 mac_cr = smsc9420_reg_read(pd, MAC_CR) & (~MAC_CR_RXEN_);
 smsc9420_reg_write(pd, MAC_CR, mac_cr);
 smsc9420_pci_flush_write(pd);


 dmac_control = smsc9420_reg_read(pd, DMAC_CONTROL);
 dmac_control &= (~DMAC_CONTROL_SR_);
 smsc9420_reg_write(pd, DMAC_CONTROL, dmac_control);
 smsc9420_pci_flush_write(pd);


 while (--timeout) {
  if (smsc9420_reg_read(pd, DMAC_STATUS) & DMAC_STS_RS_)
   break;
  udelay(10);
 }

 if (!timeout)
  smsc_warn(IFDOWN, "RX DMAC did not stop! timeout.");


 smsc9420_reg_write(pd, DMAC_STATUS, DMAC_STS_RXPS_);
}
