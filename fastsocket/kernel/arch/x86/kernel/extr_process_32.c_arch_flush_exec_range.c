
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_cs; scalar_t__ exec_limit; } ;
struct mm_struct {TYPE_1__ context; } ;


 int set_user_cs (int *,int ) ;

void arch_flush_exec_range(struct mm_struct *mm)
{
 mm->context.exec_limit = 0;
 set_user_cs(&mm->context.user_cs, 0);
}
