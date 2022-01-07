
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; scalar_t__ ldt; } ;
typedef TYPE_1__ mm_context_t ;


 int LDT_ENTRY_SIZE ;
 int alloc_ldt (TYPE_1__*,int,int ) ;
 int write_ldt_entry (scalar_t__,int,scalar_t__) ;

__attribute__((used)) static inline int copy_ldt(mm_context_t *new, mm_context_t *old)
{
 int err = alloc_ldt(new, old->size, 0);
 int i;

 if (err < 0)
  return err;

 for (i = 0; i < old->size; i++)
  write_ldt_entry(new->ldt, i, old->ldt + i * LDT_ENTRY_SIZE);
 return 0;
}
