
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ action; } ;


 int CVMX_NPI_NPI_MSI_RCV ;
 int CVMX_PEXP_NPEI_MSI_RCV0 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ OCTEON_DMA_BAR_TYPE_PCIE ;
 int OCTEON_FEATURE_PCIE ;
 int OCTEON_IRQ_MSI_BIT0 ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int do_IRQ (int) ;
 int fls64 (int ) ;
 TYPE_1__* irq_desc ;
 scalar_t__ octeon_dma_bar_type ;
 scalar_t__ octeon_has_feature (int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static irqreturn_t octeon_msi_interrupt(int cpl, void *dev_id)
{
 uint64_t msi_bits;
 int irq;

 if (octeon_dma_bar_type == OCTEON_DMA_BAR_TYPE_PCIE)
  msi_bits = cvmx_read_csr(CVMX_PEXP_NPEI_MSI_RCV0);
 else
  msi_bits = cvmx_read_csr(CVMX_NPI_NPI_MSI_RCV);
 irq = fls64(msi_bits);
 if (irq) {
  irq += OCTEON_IRQ_MSI_BIT0 - 1;
  if (irq_desc[irq].action) {
   do_IRQ(irq);
   return IRQ_HANDLED;
  } else {
   pr_err("Spurious MSI interrupt %d\n", irq);
   if (octeon_has_feature(OCTEON_FEATURE_PCIE)) {

    cvmx_write_csr(CVMX_PEXP_NPEI_MSI_RCV0,
            1ull << (irq -
       OCTEON_IRQ_MSI_BIT0));
   } else {

    cvmx_write_csr(CVMX_NPI_NPI_MSI_RCV,
            1ull << (irq -
       OCTEON_IRQ_MSI_BIT0));
   }
  }
 }
 return IRQ_NONE;
}
