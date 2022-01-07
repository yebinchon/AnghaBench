
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scratch_page; int scratch_page_dma; int pcidev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (int ) ;
 TYPE_1__ intel_private ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int put_page (int ) ;
 int set_pages_wb (int ,int) ;

__attribute__((used)) static void intel_gtt_teardown_scratch_page(void)
{
 set_pages_wb(intel_private.scratch_page, 1);
 pci_unmap_page(intel_private.pcidev, intel_private.scratch_page_dma,
         PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 put_page(intel_private.scratch_page);
 __free_page(intel_private.scratch_page);
}
