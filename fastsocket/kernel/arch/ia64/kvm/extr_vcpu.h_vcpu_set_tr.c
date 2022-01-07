
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct thash_data {void* rid; void* vadr; void* itir; void* page_flags; } ;



__attribute__((used)) static inline void vcpu_set_tr(struct thash_data *trp, u64 pte, u64 itir,
  u64 va, u64 rid)
{
 trp->page_flags = pte;
 trp->itir = itir;
 trp->vadr = va;
 trp->rid = rid;
}
