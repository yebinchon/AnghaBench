
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ldc_trans_cookie {int cookie_size; int cookie_addr; } ;
struct ldc_iommu {int lock; } ;
struct ldc_channel {int id; struct ldc_iommu iommu; } ;


 int free_npages (int ,struct ldc_iommu*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ldc_unmap(struct ldc_channel *lp, struct ldc_trans_cookie *cookies,
        int ncookies)
{
 struct ldc_iommu *iommu = &lp->iommu;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&iommu->lock, flags);
 for (i = 0; i < ncookies; i++) {
  u64 addr = cookies[i].cookie_addr;
  u64 size = cookies[i].cookie_size;

  free_npages(lp->id, iommu, addr, size);
 }
 spin_unlock_irqrestore(&iommu->lock, flags);
}
