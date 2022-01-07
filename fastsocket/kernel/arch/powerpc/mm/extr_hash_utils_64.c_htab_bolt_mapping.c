
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int shift; } ;
struct TYPE_3__ {int (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int ,int,int) ;} ;


 int BUG_ON (int) ;
 int DBG (char*,unsigned long,unsigned long,unsigned long,unsigned long,int,int) ;
 unsigned long HPTES_PER_GROUP ;
 unsigned long HPTE_R_N ;
 int HPTE_V_BOLTED ;
 unsigned long PAGE_SHIFT ;
 unsigned long get_kernel_vsid (unsigned long,int) ;
 unsigned long hpt_hash (unsigned long,unsigned int,int) ;
 unsigned long hpt_va (unsigned long,unsigned long,int) ;
 unsigned long htab_convert_pte_flags (unsigned long) ;
 unsigned long htab_hash_mask ;
 unsigned long linear_map_hash_count ;
 int* linear_map_hash_slots ;
 TYPE_2__* mmu_psize_defs ;
 scalar_t__ overlaps_kernel_text (unsigned long,unsigned long) ;
 TYPE_1__ ppc_md ;
 int stub1 (unsigned long,unsigned long,unsigned long,unsigned long,int ,int,int) ;

int htab_bolt_mapping(unsigned long vstart, unsigned long vend,
        unsigned long pstart, unsigned long prot,
        int psize, int ssize)
{
 unsigned long vaddr, paddr;
 unsigned int step, shift;
 int ret = 0;

 shift = mmu_psize_defs[psize].shift;
 step = 1 << shift;

 prot = htab_convert_pte_flags(prot);

 DBG("htab_bolt_mapping(%lx..%lx -> %lx (%lx,%d,%d)\n",
     vstart, vend, pstart, prot, psize, ssize);

 for (vaddr = vstart, paddr = pstart; vaddr < vend;
      vaddr += step, paddr += step) {
  unsigned long hash, hpteg;
  unsigned long vsid = get_kernel_vsid(vaddr, ssize);
  unsigned long va = hpt_va(vaddr, vsid, ssize);
  unsigned long tprot = prot;


  if (overlaps_kernel_text(vaddr, vaddr + step))
   tprot &= ~HPTE_R_N;

  hash = hpt_hash(va, shift, ssize);
  hpteg = ((hash & htab_hash_mask) * HPTES_PER_GROUP);

  BUG_ON(!ppc_md.hpte_insert);
  ret = ppc_md.hpte_insert(hpteg, va, paddr, tprot,
      HPTE_V_BOLTED, psize, ssize);

  if (ret < 0)
   break;




 }
 return ret < 0 ? ret : 0;
}
