
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long addr_idx; int ca; int end_swp; int addr_v; } ;
union cvmx_pci_bar1_indexx {scalar_t__ u32; TYPE_1__ s; } ;
typedef unsigned long uint64_t ;
struct device {unsigned long coherent_dma_mask; unsigned long* dma_mask; int * bus; } ;
typedef size_t int64_t ;
typedef unsigned long dma_addr_t ;
struct TYPE_4__ {unsigned long address_bits; int ref_count; } ;


 unsigned long BAR2_PCI_ADDRESS ;
 int CVMX_NPI_PCI_BAR1_INDEXX (size_t) ;



 int OCTEON_PCI_BAR1_HOLE_SIZE ;
 int bar1_lock ;
 TYPE_2__* bar1_state ;
 int mb () ;
 int octeon_dma_bar_type ;
 int octeon_npi_write32 (int ,scalar_t__) ;
 int panic (char*,...) ;
 int platform_bus_type ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int pr_err (char*,unsigned long long) ;
 int pr_warning (char*,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 unsigned long virt_to_phys (void*) ;

dma_addr_t octeon_map_dma_mem(struct device *dev, void *ptr, size_t size)
{



 mb();
 return virt_to_phys(ptr);
}
