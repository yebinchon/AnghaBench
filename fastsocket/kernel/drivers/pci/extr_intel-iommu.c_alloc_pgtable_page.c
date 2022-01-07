
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flags; } ;


 int GFP_ATOMIC ;
 unsigned int PF_MEMALLOC ;
 TYPE_1__* current ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static inline void *alloc_pgtable_page(void)
{
 unsigned int flags;
 void *vaddr;


 flags = current->flags & PF_MEMALLOC;
 current->flags |= PF_MEMALLOC;
 vaddr = (void *)get_zeroed_page(GFP_ATOMIC);
 current->flags &= (~PF_MEMALLOC | flags);
 return vaddr;
}
