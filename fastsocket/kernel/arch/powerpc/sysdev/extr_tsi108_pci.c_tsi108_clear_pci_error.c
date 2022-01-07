
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ TSI108_PB_AERR ;
 scalar_t__ TSI108_PB_ERRCS ;
 int TSI108_PB_ERRCS_ES ;
 scalar_t__ TSI108_PB_ISR ;
 int TSI108_PB_ISR_PBS_RD_ERR ;
 scalar_t__ TSI108_PB_OFFSET ;
 scalar_t__ TSI108_PCI_CSR ;
 scalar_t__ TSI108_PCI_OFFSET ;
 int tsi108_read_reg (scalar_t__) ;
 int tsi108_write_reg (scalar_t__,int) ;

void tsi108_clear_pci_error(u32 pci_cfg_base)
{
 u32 err_stat, err_addr, pci_stat;
 err_stat = tsi108_read_reg(TSI108_PB_OFFSET + TSI108_PB_ERRCS);
 err_addr = tsi108_read_reg(TSI108_PB_OFFSET + TSI108_PB_AERR);

 if (err_stat & TSI108_PB_ERRCS_ES) {

  tsi108_write_reg(TSI108_PB_OFFSET + TSI108_PB_ERRCS,
     TSI108_PB_ERRCS_ES);


  tsi108_write_reg(TSI108_PB_OFFSET + TSI108_PB_ISR,
     TSI108_PB_ISR_PBS_RD_ERR);


  if ((err_addr & 0xFF000000) == pci_cfg_base) {
   pci_stat =
       tsi108_read_reg(TSI108_PCI_OFFSET + TSI108_PCI_CSR);
   tsi108_write_reg(TSI108_PCI_OFFSET + TSI108_PCI_CSR,
      pci_stat);
  }
 }

 return;
}
