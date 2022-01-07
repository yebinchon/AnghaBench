
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ldc_mtable_entry {int dummy; } ;
struct TYPE_2__ {unsigned long limit; int * map; } ;
struct ldc_iommu {TYPE_1__ arena; int * page_table; } ;
struct ldc_channel {int id; struct ldc_iommu iommu; } ;


 int free_pages (unsigned long,unsigned long) ;
 unsigned long get_order (unsigned long) ;
 int kfree (int *) ;
 int sun4v_ldc_set_map_table (int ,int ,int ) ;

__attribute__((used)) static void ldc_iommu_release(struct ldc_channel *lp)
{
 struct ldc_iommu *iommu = &lp->iommu;
 unsigned long num_tsb_entries, tsbsize, order;

 (void) sun4v_ldc_set_map_table(lp->id, 0, 0);

 num_tsb_entries = iommu->arena.limit;
 tsbsize = num_tsb_entries * sizeof(struct ldc_mtable_entry);
 order = get_order(tsbsize);

 free_pages((unsigned long) iommu->page_table, order);
 iommu->page_table = ((void*)0);

 kfree(iommu->arena.map);
 iommu->arena.map = ((void*)0);
}
