
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct device {int * bus; } ;
typedef unsigned long dma_addr_t ;
struct TYPE_2__ {scalar_t__ ref_count; } ;


 unsigned long BAR2_PCI_ADDRESS ;
 int CVMX_NPI_PCI_BAR1_INDEXX (int) ;



 int OCTEON_PCI_BAR1_HOLE_SIZE ;
 int bar1_lock ;
 TYPE_1__* bar1_state ;
 int octeon_dma_bar_type ;
 int octeon_npi_write32 (int ,int ) ;
 int panic (char*,...) ;
 int platform_bus_type ;
 int pr_debug (char*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void octeon_unmap_dma_mem(struct device *dev, dma_addr_t dma_addr)
{





 return;
}
