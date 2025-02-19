
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scatterlist {int length; int offset; } ;
struct ldc_trans_cookie {int dummy; } ;
struct ldc_mtable_entry {int dummy; } ;
struct ldc_iommu {int page_table; int lock; } ;
struct ldc_channel {struct ldc_iommu iommu; } ;
struct cookie_state {int page_table; int nc; struct ldc_mtable_entry* pte_idx; int prev_cookie; int mte_base; struct ldc_trans_cookie* cookies; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 unsigned int LDC_MAP_ALL ;
 int PAGE_SHIFT ;
 struct ldc_mtable_entry* alloc_npages (struct ldc_iommu*,unsigned long) ;
 int fill_cookies (struct cookie_state*,int,int ,int ) ;
 int page_to_pfn (int ) ;
 int perm_to_mte (unsigned int) ;
 int sg_count_pages (struct scatterlist*,int) ;
 int sg_page (struct scatterlist*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ldc_map_sg(struct ldc_channel *lp,
        struct scatterlist *sg, int num_sg,
        struct ldc_trans_cookie *cookies, int ncookies,
        unsigned int map_perm)
{
 unsigned long i, npages, flags;
 struct ldc_mtable_entry *base;
 struct cookie_state state;
 struct ldc_iommu *iommu;
 int err;

 if (map_perm & ~LDC_MAP_ALL)
  return -EINVAL;

 err = sg_count_pages(sg, num_sg);
 if (err < 0)
  return err;

 npages = err;
 if (err > ncookies)
  return -EMSGSIZE;

 iommu = &lp->iommu;

 spin_lock_irqsave(&iommu->lock, flags);
 base = alloc_npages(iommu, npages);
 spin_unlock_irqrestore(&iommu->lock, flags);

 if (!base)
  return -ENOMEM;

 state.page_table = iommu->page_table;
 state.cookies = cookies;
 state.mte_base = perm_to_mte(map_perm);
 state.prev_cookie = ~(u64)0;
 state.pte_idx = (base - iommu->page_table);
 state.nc = 0;

 for (i = 0; i < num_sg; i++)
  fill_cookies(&state, page_to_pfn(sg_page(&sg[i])) << PAGE_SHIFT,
        sg[i].offset, sg[i].length);

 return state.nc;
}
