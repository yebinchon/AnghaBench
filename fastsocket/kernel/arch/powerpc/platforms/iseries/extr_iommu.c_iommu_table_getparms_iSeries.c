
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table_cb {unsigned long itc_busno; unsigned char itc_slotno; unsigned char itc_virtbus; int itc_size; int itc_index; int itc_offset; } ;
struct iommu_table {int it_size; unsigned long it_busno; int it_blocksize; int it_type; int it_index; int it_offset; } ;


 int GFP_KERNEL ;
 int HvCallXm_getTceTableParms (int ) ;
 int TCE_ENTRY_SIZE ;
 int TCE_PAGE_SIZE ;
 int TCE_PCI ;
 int TCE_VB ;
 int iseries_hv_addr (struct iommu_table_cb*) ;
 int kfree (struct iommu_table_cb*) ;
 struct iommu_table_cb* kzalloc (int,int ) ;
 int panic (char*,...) ;

void iommu_table_getparms_iSeries(unsigned long busno,
      unsigned char slotno,
      unsigned char virtbus,
      struct iommu_table* tbl)
{
 struct iommu_table_cb *parms;

 parms = kzalloc(sizeof(*parms), GFP_KERNEL);
 if (parms == ((void*)0))
  panic("PCI_DMA: TCE Table Allocation failed.");

 parms->itc_busno = busno;
 parms->itc_slotno = slotno;
 parms->itc_virtbus = virtbus;

 HvCallXm_getTceTableParms(iseries_hv_addr(parms));

 if (parms->itc_size == 0)
  panic("PCI_DMA: parms->size is zero, parms is 0x%p", parms);


 tbl->it_size = (parms->itc_size * TCE_PAGE_SIZE) / TCE_ENTRY_SIZE;
 tbl->it_busno = parms->itc_busno;
 tbl->it_offset = parms->itc_offset;
 tbl->it_index = parms->itc_index;
 tbl->it_blocksize = 1;
 tbl->it_type = virtbus ? TCE_VB : TCE_PCI;

 kfree(parms);
}
