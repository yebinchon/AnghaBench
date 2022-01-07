
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct iommu_table {scalar_t__ it_index; } ;


 scalar_t__ HvCallXm_setTce (scalar_t__,scalar_t__,int ) ;
 int panic (char*,scalar_t__) ;

__attribute__((used)) static void tce_free_iSeries(struct iommu_table *tbl, long index, long npages)
{
 u64 rc;

 while (npages--) {
  rc = HvCallXm_setTce((u64)tbl->it_index, (u64)index, 0);
  if (rc)
   panic("PCI_DMA: HvCallXm_setTce failed, Rc: 0x%llx\n",
     rc);
  index++;
 }
}
