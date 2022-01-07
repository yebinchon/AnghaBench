
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 int load_secondary_context (struct mm_struct*) ;

__attribute__((used)) static void context_reload(void *__data)
{
 struct mm_struct *mm = __data;

 if (mm == current->mm)
  load_secondary_context(mm);
}
