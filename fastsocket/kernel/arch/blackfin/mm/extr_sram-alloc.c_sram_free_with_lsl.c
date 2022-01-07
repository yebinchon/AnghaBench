
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sram_list_struct {void const* addr; struct sram_list_struct* next; } ;
struct TYPE_3__ {struct sram_list_struct* sram_list; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 TYPE_2__* current ;
 int kfree (struct sram_list_struct*) ;
 int sram_free (void const*) ;

int sram_free_with_lsl(const void *addr)
{
 struct sram_list_struct *lsl, **tmp;
 struct mm_struct *mm = current->mm;

 for (tmp = &mm->context.sram_list; *tmp; tmp = &(*tmp)->next)
  if ((*tmp)->addr == addr)
   goto found;
 return -1;
found:
 lsl = *tmp;
 sram_free(addr);
 *tmp = lsl->next;
 kfree(lsl);

 return 0;
}
