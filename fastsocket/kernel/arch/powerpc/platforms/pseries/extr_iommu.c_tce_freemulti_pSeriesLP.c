
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_table {scalar_t__ it_index; } ;


 scalar_t__ __get_SP () ;
 int current ;
 int plpar_tce_stuff (int,int,int ,long) ;
 int printk (char*,...) ;
 scalar_t__ printk_ratelimit () ;
 int show_stack (int ,unsigned long*) ;

__attribute__((used)) static void tce_freemulti_pSeriesLP(struct iommu_table *tbl, long tcenum, long npages)
{
 u64 rc;

 rc = plpar_tce_stuff((u64)tbl->it_index, (u64)tcenum << 12, 0, npages);

 if (rc && printk_ratelimit()) {
  printk("tce_freemulti_pSeriesLP: plpar_tce_stuff failed\n");
  printk("\trc      = %lld\n", rc);
  printk("\tindex   = 0x%llx\n", (u64)tbl->it_index);
  printk("\tnpages  = 0x%llx\n", (u64)npages);
  show_stack(current, (unsigned long *)__get_SP());
 }
}
