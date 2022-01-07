
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
typedef int pte_t ;
typedef int jmp_buf ;
struct TYPE_3__ {int * fault_catcher; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int KM_UML_USERCOPY ;
 unsigned long PAGE_MASK ;
 int UML_SETJMP (int *) ;
 TYPE_2__* current ;
 scalar_t__ kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (struct page*,int ) ;
 int * maybe_map (unsigned long,int) ;
 struct page* pte_page (int ) ;
 int stub1 (unsigned long,int,void*) ;

__attribute__((used)) static int do_op_one_page(unsigned long addr, int len, int is_write,
   int (*op)(unsigned long addr, int len, void *arg), void *arg)
{
 jmp_buf buf;
 struct page *page;
 pte_t *pte;
 int n, faulted;

 pte = maybe_map(addr, is_write);
 if (pte == ((void*)0))
  return -1;

 page = pte_page(*pte);
 addr = (unsigned long) kmap_atomic(page, KM_UML_USERCOPY) +
  (addr & ~PAGE_MASK);

 current->thread.fault_catcher = &buf;

 faulted = UML_SETJMP(&buf);
 if (faulted == 0)
  n = (*op)(addr, len, arg);
 else
  n = -1;

 current->thread.fault_catcher = ((void*)0);

 kunmap_atomic(page, KM_UML_USERCOPY);

 return n;
}
