
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int IOP13XX_ATUE_ATUISR ;
 unsigned int IOP13XX_ATUE_ATUISR_ERROR ;
 int IOP13XX_ATUE_ATUSR ;
 int IOP13XX_ATUE_PIE_MSK ;
 int IOP13XX_ATUE_PIE_STS ;
 unsigned int IOP13XX_ATUE_STAT_PCI_IFACE_ERR ;
 unsigned int IOP_PCI_STATUS_ERROR ;
 int PRINTK (char*,unsigned int) ;
 unsigned int __raw_readl (int ) ;
 unsigned int __raw_readw (int ) ;
 int __raw_writel (unsigned int,int ) ;
 int __raw_writew (unsigned int,int ) ;

__attribute__((used)) static int iop13xx_atue_pci_status(int clear)
{
 unsigned int status;
 int err = 0;






 status = __raw_readw(IOP13XX_ATUE_ATUSR);
 if (status & IOP_PCI_STATUS_ERROR) {
  PRINTK("\t\t\tPCI error: ATUSR %#08x", status);
  if(clear)
   __raw_writew(status & IOP_PCI_STATUS_ERROR,
    IOP13XX_ATUE_ATUSR);
  err++;
 }


 status = __raw_readl(IOP13XX_ATUE_ATUISR);
 if (status & IOP13XX_ATUE_ATUISR_ERROR) {
  PRINTK("\t\t\tPCI error: ATUISR %#08x", status);
  if (clear)
   __raw_writew(status & IOP13XX_ATUE_ATUISR_ERROR,
    IOP13XX_ATUE_ATUISR);
  err++;


  if (status & IOP13XX_ATUE_STAT_PCI_IFACE_ERR) {

   status = __raw_readl(IOP13XX_ATUE_PIE_STS) &
     ~(__raw_readl(IOP13XX_ATUE_PIE_MSK));

   if (status) {
    PRINTK("\t\t\tPCI-E error: ATUE_PIE_STS %#08x",
     __raw_readl(IOP13XX_ATUE_PIE_STS));
    err++;
   } else {
    PRINTK("\t\t\tPCI-E error: ATUE_PIE_STS %#08x",
     __raw_readl(IOP13XX_ATUE_PIE_STS));
    PRINTK("\t\t\tPCI-E error: ATUE_PIE_MSK %#08x",
     __raw_readl(IOP13XX_ATUE_PIE_MSK));
    BUG();
   }

   if(clear)
    __raw_writel(status, IOP13XX_ATUE_PIE_STS);
  }
 }

 return err;
}
