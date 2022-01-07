
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_rr {int ps; int val; } ;
typedef unsigned long u64 ;
struct thash_data {unsigned long page_flags; int itir; unsigned long gpaddr; int etag; } ;


 int INVALID_TI_TAG ;
 unsigned long PAGE_FLAGS_RV_MASK ;
 unsigned long _PAGE_PPN_MASK ;
 int ia64_get_rr (unsigned long) ;
 int ia64_mf () ;
 scalar_t__ ia64_thash (unsigned long) ;
 int ia64_ttag (unsigned long) ;
 unsigned long itir_ps (unsigned long) ;

__attribute__((used)) static void vhpt_insert(u64 pte, u64 itir, u64 ifa, u64 gpte)
{
 union ia64_rr rr;
 struct thash_data *head;
 unsigned long ps, gpaddr;

 ps = itir_ps(itir);
 rr.val = ia64_get_rr(ifa);

  gpaddr = ((gpte & _PAGE_PPN_MASK) >> ps << ps) |
     (ifa & ((1UL << ps) - 1));

 head = (struct thash_data *)ia64_thash(ifa);
 head->etag = INVALID_TI_TAG;
 ia64_mf();
 head->page_flags = pte & ~PAGE_FLAGS_RV_MASK;
 head->itir = rr.ps << 2;
 head->etag = ia64_ttag(ifa);
 head->gpaddr = gpaddr;
}
