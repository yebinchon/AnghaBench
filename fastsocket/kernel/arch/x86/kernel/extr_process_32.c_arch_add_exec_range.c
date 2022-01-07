
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long exec_limit; } ;
struct mm_struct {TYPE_1__ context; } ;


 int modify_cs (struct mm_struct*,unsigned long) ;

void arch_add_exec_range(struct mm_struct *mm, unsigned long limit)
{
 if (limit > mm->context.exec_limit)
  modify_cs(mm, limit);
}
