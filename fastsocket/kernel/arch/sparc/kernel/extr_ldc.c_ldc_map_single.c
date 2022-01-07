
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ldc_trans_cookie {int dummy; } ;
struct ldc_mtable_entry {int dummy; } ;
struct ldc_iommu {int page_table; int lock; } ;
struct ldc_channel {struct ldc_iommu iommu; } ;
struct cookie_state {int page_table; int nc; struct ldc_mtable_entry* pte_idx; int prev_cookie; int mte_base; struct ldc_trans_cookie* cookies; } ;


 int BUG_ON (int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 unsigned int LDC_MAP_ALL ;
 unsigned long PAGE_MASK ;
 unsigned long __pa (void*) ;
 struct ldc_mtable_entry* alloc_npages (struct ldc_iommu*,unsigned long) ;
 int fill_cookies (struct cookie_state*,unsigned long,unsigned long,unsigned int) ;
 unsigned long pages_in_region (unsigned long,unsigned int) ;
 int perm_to_mte (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ldc_map_single(struct ldc_channel *lp,
     void *buf, unsigned int len,
     struct ldc_trans_cookie *cookies, int ncookies,
     unsigned int map_perm)
{
 unsigned long npages, pa, flags;
 struct ldc_mtable_entry *base;
 struct cookie_state state;
 struct ldc_iommu *iommu;

 if ((map_perm & ~LDC_MAP_ALL) || (ncookies < 1))
  return -EINVAL;

 pa = __pa(buf);
 if ((pa | len) & (8UL - 1))
  return -EFAULT;

 npages = pages_in_region(pa, len);

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
 fill_cookies(&state, (pa & PAGE_MASK), (pa & ~PAGE_MASK), len);
 BUG_ON(state.nc != 1);

 return state.nc;
}
