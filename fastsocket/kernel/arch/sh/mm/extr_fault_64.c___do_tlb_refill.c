
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlb_info {unsigned long long next; unsigned long long last; unsigned long long first; } ;
typedef int pte_t ;
struct TYPE_2__ {struct tlb_info dtlb; struct tlb_info itlb; } ;


 unsigned long MMU_VPN_MASK ;
 unsigned long long PTEH_ASID_SHIFT ;
 unsigned long long PTEH_VALID ;
 unsigned long long TLB_STEP ;
 unsigned long long _PAGE_FLAGS_HARDWARE_MASK ;
 int __flush_tlb_slot (unsigned long long) ;
 TYPE_1__* cpu_data ;
 unsigned long long get_asid () ;
 unsigned long long neff_sign_extend (unsigned long) ;
 unsigned long long pte_val (int ) ;

inline void __do_tlb_refill(unsigned long address,
                            unsigned long long is_text_not_data, pte_t *pte)
{
 unsigned long long ptel;
 unsigned long long pteh=0;
 struct tlb_info *tlbp;
 unsigned long long next;


 ptel = pte_val(*pte);




 pteh = neff_sign_extend(address & MMU_VPN_MASK);


 pteh |= get_asid() << PTEH_ASID_SHIFT;
 pteh |= PTEH_VALID;


 ptel &= _PAGE_FLAGS_HARDWARE_MASK;

 tlbp = is_text_not_data ? &(cpu_data->itlb) : &(cpu_data->dtlb);
 next = tlbp->next;
 __flush_tlb_slot(next);
 asm volatile ("putcfg %0,1,%2\n\n\t"
        "putcfg %0,0,%1\n"
        : : "r" (next), "r" (pteh), "r" (ptel) );

 next += TLB_STEP;
 if (next > tlbp->last) next = tlbp->first;
 tlbp->next = next;

}
