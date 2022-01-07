
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sparc64_ctx_val; } ;
struct mm_struct {TYPE_1__ context; } ;


 int CTX_BMAP_SLOTS ;
 int CTX_FIRST_VERSION ;
 int CTX_NR_BITS ;
 int CTX_NR_MASK ;
 unsigned long CTX_PGSZ_MASK ;
 int CTX_VERSION_MASK ;
 int ctx_alloc_lock ;
 unsigned long find_next_zero_bit (unsigned long*,unsigned long,int) ;
 unsigned long* mmu_context_bmap ;
 int smp_new_mmu_context_version () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tlb_context_cache ;
 scalar_t__ unlikely (int) ;

void get_new_mmu_context(struct mm_struct *mm)
{
 unsigned long ctx, new_ctx;
 unsigned long orig_pgsz_bits;
 unsigned long flags;
 int new_version;

 spin_lock_irqsave(&ctx_alloc_lock, flags);
 orig_pgsz_bits = (mm->context.sparc64_ctx_val & CTX_PGSZ_MASK);
 ctx = (tlb_context_cache + 1) & CTX_NR_MASK;
 new_ctx = find_next_zero_bit(mmu_context_bmap, 1 << CTX_NR_BITS, ctx);
 new_version = 0;
 if (new_ctx >= (1 << CTX_NR_BITS)) {
  new_ctx = find_next_zero_bit(mmu_context_bmap, ctx, 1);
  if (new_ctx >= ctx) {
   int i;
   new_ctx = (tlb_context_cache & CTX_VERSION_MASK) +
    CTX_FIRST_VERSION;
   if (new_ctx == 1)
    new_ctx = CTX_FIRST_VERSION;




   mmu_context_bmap[0] = 3;
   mmu_context_bmap[1] = 0;
   mmu_context_bmap[2] = 0;
   mmu_context_bmap[3] = 0;
   for (i = 4; i < CTX_BMAP_SLOTS; i += 4) {
    mmu_context_bmap[i + 0] = 0;
    mmu_context_bmap[i + 1] = 0;
    mmu_context_bmap[i + 2] = 0;
    mmu_context_bmap[i + 3] = 0;
   }
   new_version = 1;
   goto out;
  }
 }
 mmu_context_bmap[new_ctx>>6] |= (1UL << (new_ctx & 63));
 new_ctx |= (tlb_context_cache & CTX_VERSION_MASK);
out:
 tlb_context_cache = new_ctx;
 mm->context.sparc64_ctx_val = new_ctx | orig_pgsz_bits;
 spin_unlock_irqrestore(&ctx_alloc_lock, flags);

 if (unlikely(new_version))
  smp_new_mmu_context_version();
}
