
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_hw_ppgtt {int * pt_pages; int scratch_page_dma_addr; int dev; } ;
typedef int gtt_pte_t ;


 int I915_CACHE_LLC ;
 unsigned int I915_PPGTT_PT_ENTRIES ;
 int KM_USER0 ;
 int gen6_pte_encode (int ,int ,int ) ;
 int * kmap_atomic (int ,int ) ;
 int kunmap_atomic (int *,int ) ;

__attribute__((used)) static void gen6_ppgtt_clear_range(struct i915_hw_ppgtt *ppgtt,
       unsigned first_entry,
       unsigned num_entries)
{
 gtt_pte_t *pt_vaddr;
 gtt_pte_t scratch_pte;
 unsigned act_pd = first_entry / I915_PPGTT_PT_ENTRIES;
 unsigned first_pte = first_entry % I915_PPGTT_PT_ENTRIES;
 unsigned last_pte, i;

 scratch_pte = gen6_pte_encode(ppgtt->dev,
          ppgtt->scratch_page_dma_addr,
          I915_CACHE_LLC);

 while (num_entries) {
  last_pte = first_pte + num_entries;
  if (last_pte > I915_PPGTT_PT_ENTRIES)
   last_pte = I915_PPGTT_PT_ENTRIES;

  pt_vaddr = kmap_atomic(ppgtt->pt_pages[act_pd], KM_USER0);

  for (i = first_pte; i < last_pte; i++)
   pt_vaddr[i] = scratch_pte;

  kunmap_atomic(pt_vaddr, KM_USER0);

  num_entries -= last_pte - first_pte;
  first_pte = 0;
  act_pd++;
 }
}
