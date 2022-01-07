
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int orig_nents; int nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int pcidev; } ;
struct TYPE_3__ {scalar_t__ page_count; } ;


 int DBG (char*,unsigned long) ;
 int PCI_DMA_BIDIRECTIONAL ;
 TYPE_2__ intel_private ;
 TYPE_1__* mem ;
 int pci_unmap_sg (int ,struct scatterlist*,int,int ) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void intel_gtt_unmap_memory(struct scatterlist *sg_list, int num_sg)
{
 struct sg_table st;
 DBG("try unmapping %lu pages\n", (unsigned long)mem->page_count);

 pci_unmap_sg(intel_private.pcidev, sg_list,
       num_sg, PCI_DMA_BIDIRECTIONAL);

 st.sgl = sg_list;
 st.orig_nents = st.nents = num_sg;

 sg_free_table(&st);
}
